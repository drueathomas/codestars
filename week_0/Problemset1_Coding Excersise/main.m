//
//  main.m
//  ProblemSet1
//
//  Created by Drue Thomas on 7/31/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //Question 1: Capitalize Words Start
        
        //declare the array of strings to capitalize
        NSArray *wordArray = @[@"computer", @"iphone", @"racecar" , @"macbook" , @"ipad"];
        
        //find size of array
        NSUInteger wordArrayLength = [wordArray count];
        
        //method to capitalize array
        NSArray *capArray = [wordArray valueForKeyPath:@"capitalizedString"];
        
        NSLog(@"Question 1:");
        
        //print capitalized array
        for(unsigned long i = 0;i < wordArrayLength; i++){
           
           NSLog(@"%@, " , capArray[i]);
            
        }
        //Capitalize Words End
        
        //Question 2: Even Numbers Start
     
        //declare the array of ints
        NSArray *numArray = @[@45, @22090909, @5698, @90433, @43431, @3454115, @43002, @109981, @545, @14345435, @1009282, @90909, @13233, @443535, @14782920, @49304, @434];
        
        //find size of array
        unsigned long numArrayLength = [numArray count];
        
        //declare an array to hold even ints
        //NSMutableArray *even = [[NSMutableArray alloc] initWithCapacity:numArrayLength];
        
        NSLog(@"Question 2:");
        
        //for loop to find even
        for (NSInteger i = 0; i <= numArrayLength - 1; i++)
        {
         //   NSInteger num = [numArray objectAtIndex:i];
            int num = [numArray[i] intValue];
            
            if(num % 2 == 0)
            {
                //store in even array
                //[even addObject:[NSNumber numberWithInt:num]];
                NSLog(@"%d", num);
            
            }
        
        }
        
         //print out the array of even numbers
        //NSLog(@"%@",even);
        
        //Even Numbers End 
        
        //Question 3: Sum Numbers Start
        //declare array to sum
        NSArray *sumArray = @[@100, @80, @85, @70, @99, @50, @45, @89, @34, @53, @25, @39];
        
        //find size of array
        unsigned long sumArrayLength = [sumArray count];
        
        //itterate through array; sum
        NSInteger sum = 0;
        for (int i = 0; i <= sumArrayLength - 1; i++) {
            
            sum += [[sumArray objectAtIndex:i] integerValue];
       
        }
        
        NSLog(@"Question 3: The sum of sumArray is %ld.", (long)sum);
        
        
        
    }
    
return 0;
}




