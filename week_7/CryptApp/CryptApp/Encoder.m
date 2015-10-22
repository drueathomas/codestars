//
//  Encoder.m
//  CryptApp
//
//  Created by Drue Thomas on 9/19/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "Encoder.h"
#import "SharedCipher.h"
#import "Cipher.h"


@implementation Encoder

- (void) generateStandardAlphabet {
    self.standardAlphabet = [NSMutableDictionary dictionary];
    
    self.alphabet = [NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",nil];
    
    NSInteger index = 0;
    
    for(NSString *character in self.alphabet)
    {
        
        [self.standardAlphabet setObject:character forKey:[NSNumber numberWithInteger:index]];
        index ++;
    }
    
    
}

-(void) generateRandomNumberSet {
    self.topOfRange = 52;
    
    self.exclude = [NSMutableArray array];
    
    int counter = 0;
    
    while (counter < self.topOfRange) {
        NSNumber *aRandom = [NSNumber numberWithUnsignedInt:(arc4random_uniform(self.topOfRange))];
        
        if (![self.exclude containsObject:aRandom]) {
            [self.exclude addObject:(aRandom)];
            counter++;
    
        
}
    }
}

- (void) generateCipher {
    
    self.cipher = [NSMutableDictionary dictionary];
    
    
    for (NSInteger counter = 0; counter < [self.alphabet count]; counter ++)
    {
        
        [self.cipher setObject:[self.alphabet objectAtIndex:counter] forKey:[self.exclude objectAtIndex:counter]];
     
     }
    
    NSLog(@"%@", self.cipher);
    
   
}

- (void) userInputToChars : (NSString *) userInput {
    if (!self.userInputChars)
        self.userInputChars = [[NSMutableArray alloc] initWithCapacity:[userInput length]];
    else
        [self.userInputChars removeAllObjects];
    
    
    for (int i=0; i < [userInput length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [userInput characterAtIndex:i]];
        [self.userInputChars addObject:ichar];
    }
    
    NSLog(@"%@", self.userInputChars);
}

- (void) charsToCipherKeys {
    //initialize charsToKeys; remove all other values
    if (!self.charsToKeys)
        self.charsToKeys = [NSMutableArray array];
    else
        [self.charsToKeys removeAllObjects];
    
    //character set with acceptable letters
    NSCharacterSet *strCharSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        strCharSet = [strCharSet invertedSet];
    
    
    for (int i=0; i<[self.userInputChars count]; i++) {
       
        //put char in string; compare string to range
        NSString *character = [self.userInputChars objectAtIndex:i];
        
        
        NSRange first = [character rangeOfComposedCharacterSequenceAtIndex:0];
        NSRange match = [character rangeOfCharacterFromSet:[NSCharacterSet letterCharacterSet] options:0 range:first];
        
        if (match.location != NSNotFound) {
            
            NSArray *key = [self.cipher allKeysForObject: (NSString*) character];
            
            [self.charsToKeys addObjectsFromArray:key];
            
        
        } else {
            
             [self.charsToKeys addObject:character];
            
        }
        
    
    }
    NSLog(@"%@", self.charsToKeys);
}
- (void) cipherKeysToChars {

    //initialize keysToChars; clear if necessary
    if (!self.keysToChars)
        self.keysToChars = [NSMutableArray array];
    else
        [self.keysToChars removeAllObjects];
    
    for (int i=0; i<[self.userInputChars count]; i++) {
        
        //put key in id
        id key = [self.charsToKeys objectAtIndex:i];
        
        //check if it is an NSNumber
        
        if ([key isKindOfClass:[NSNumber class]]) {
            NSString *character = [self.standardAlphabet objectForKey:(id)key];
            
            [self.keysToChars addObject:character];
            
            
        } else {
            
            [self.keysToChars addObject:key];
            
        }
        
    }
    NSLog(@"%@", self.keysToChars);
}

- (void) cipherCharsToStandardKeys {
    //initialize charsToKeys; empty if necessary
    if (!self.charsToKeys)
        self.charsToKeys = [NSMutableArray array];
    else
        [self.charsToKeys removeAllObjects];
    
    //character set with acceptable letters
    NSCharacterSet *strCharSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
    strCharSet = [strCharSet invertedSet];
    
    
    for (int i=0; i<[self.userInputChars count]; i++) {
        
        //put char in string; compare string to range
        NSString *character = [self.userInputChars objectAtIndex:i];
        
        
        NSRange first = [character rangeOfComposedCharacterSequenceAtIndex:0];
        NSRange match = [character rangeOfCharacterFromSet:[NSCharacterSet letterCharacterSet] options:0 range:first];
        
        if (match.location != NSNotFound) {
            
            NSArray *key = [self.standardAlphabet allKeysForObject: (NSString*) character];
            
            [self.charsToKeys addObjectsFromArray:key];
            
            
        } else {
            
            [self.charsToKeys addObject:character];
            
        }
        
        
    }
    NSLog(@"%@", self.charsToKeys);
}
- (void)standardKeysToChars {
    
    //initialize keysToChars; clear if necessary
    if (!self.keysToChars)
        self.keysToChars = [NSMutableArray array];
    else
        [self.keysToChars removeAllObjects];
    
    for (int i=0; i<[self.userInputChars count]; i++) {
        
        //put key in id
        id key = [self.charsToKeys objectAtIndex:i];
        
        //check if it is an NSNumber
        
        if ([key isKindOfClass:[NSNumber class]]) {
            NSString *character = [self.standardAlphabet objectForKey:(id)key];
            
            [self.keysToChars addObject:character];
            
            
        } else {
            
            [self.keysToChars addObject:key];
            
        }
        
    }
    NSLog(@"%@", self.keysToChars);
}



- (NSString *) arrayToString {
    
    NSString * result = [[self.keysToChars valueForKey:@"description"] componentsJoinedByString:@""];
    NSLog(@"%@", result);
    
    return result;
}



- (NSMutableDictionary *) updateCipher{
    
    
    self.cipher = [NSMutableDictionary dictionaryWithObjectsAndKeys:self.cipherName, @"name", self.cipher, @"cipher", nil];
    return self.cipher;
}



- (NSString *) encodeUserInput : (NSString *) userInput :  (NSString *) name{
    
    [self userInputToChars: userInput];
    
    [self charsToCipherKeys];
    
    [self cipherKeysToChars];
    
    NSString *result = [self arrayToString];
   
    self.cipher = [self updateCipher];
    
    
    
    NSLog(@"%@", result);
    
    return result;
    
    }



-(NSString *) decodeUserInput : (NSString *) userInput : (NSString *) name{
    
    [self userInputToChars: userInput];
    
    [self cipherCharsToStandardKeys];
    
    [self standardKeysToChars];
    
    NSString *result = [self arrayToString];
    
    [[SharedCipher sharedInstance] addCipher:[[Cipher alloc]updateCipher] atIndex:index];
    
    NSLog(@"%@", result);

    
    return result;
    
}

-(void) saveCipher :(NSString *) name {
    
    
    
//    //how do I initialize this the first time and never again?
//    if (!self.activeCiphers)
//        self.activeCiphers = [NSMutableDictionary dictionary];
// 
//  
//    self.cipherName = name;
//    
//    NSMutableDictionary *cipherToSave = self.cipher;
//    
//    [cipherToSave setObject:self.cipherName forKey:@"name"];
//    
//    [self.activeCiphers  setObject:cipherToSave forKey:self.cipherName];
//    
//    
//    NSLog(@"ACTIVE CIPHERS%@", self.activeCiphers);
    

}


@end

