//
//  main.m
//  CountStrings
//
//  Created by Drue Thomas on 8/9/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringCounter.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        StringCounter *string;
        
        [string setMyString = @"This is the string I am counting"];
        
        int words = [string countTheWords:myString
                ];
        
        int vowels = [string countTheVowels:@"This is the string I am counting"];
        
        NSLog(@"The string \"%@\" has %ld words and %ld vowels", myString, (long)words, (long)vowels);
        
        
    }
    return 0;
}
