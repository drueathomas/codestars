//
//  StringCounter.m
//  CountStrings
//
//  Created by Drue Thomas on 8/9/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StringCounter.h"

@implementation StringCounter : NSObject

- (int) countTheWords:(NSString *)myString
{
    NSString *string = myString;
    
    NSArray *words = [myString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //NSArray *words = [string componentsSeparatedByString:@" "];
    
    int wordCount = [words count];
    
    return wordCount;
}


- (int) countTheVowels:(NSString *)myString
{
    //find the vowels in the string; store in array 'vowels'
    NSArray *vowels = [myString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiou"]];
    
    int vowelCount = [vowels count];
    
    return vowelCount;
    
}


@end
