# Codestars- Problem Set #3
## Drue Thomas

One of the most important features of object-oriented programming is the idea of **inhertitance**. Inheritance involves using exsisting classes--called **base classes**-- to define new classes--called **derived classes**. Derived classes in Objective C have access to instance variables and methods of the base class.  

Inheritance in programming mimics common examples of inheritance in the real world. Take for example the animal taxonomy.  You might say the the base class is *Animal*. From there you might have subclasses like *Mammal* and *Reptile*. It doesn't stop there-- from *Mammal* you could have a derived class called *Dog* and so on. 

All of these classes have an ***is a*** relationship. A dog *is a* kind of mammal, and a mammal *is a* kind of animal. Each branch of this heirarchy is a more specialized version of the one before it. The same applies for object-oriented inheritance. 

A dog would inherit the traits of a mammal: warm blooded, breathes air, moves, eats. It would work the same way with an objective C class. Our *Dog* class would inherit the methods *hasWarmBlood()*, *eat()*, *breathsAir()*, and *move()* from the *Mammal* class. A *Dog* would have access to these methods as well as an instance variables that *Mammal* has. To make this connection you would just need to *#import "Mammal.h"* into your *Dog* class.

The *Dog* class probably needs a few unique methods as well that are inherent specifically to dogs but not necessarily to mammals. For exmaple, *bark* or *wagTail*. It might also want to use a *Animal* method but in a different way. Say for instance you have a method that calls an animal called *callAnimal*:


```
- (void) callAnimal
{
    NSLog(@"Come, %@!", self.name);
}
```

For a dog you might want to whistle before you call the name. So you can override this method in the *Dog* implementation to add additional commands. When this program is run, the compiler will override the *Animal* callAnimal method and use the following instead:


```
- (void) callAnimal
{
    NSLog(@"\*whistle\*");
    NSLog(@"Come, %@!", self.name);
}
```

We kept the initial implementation of the *callAnimal* method but added an additional line. If we wanted to streamline this even more we could use the **super** keyword to call our original method inside of our override method. Super basically tells the compiler to look for an implementation starting with the superclass's methods. It would look something like this:


```
- (void) callAnimal
{
    NSLog(@"\*whistle\*");
    [super callAnimal];
}
```

The result would be:

```
*whistle*
Come here, Fido!
```