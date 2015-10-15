//
//  Encoder.m
//  CryptApp
//
//  Created by Drue Thomas on 9/19/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "Encoder.h"


@implementation Encoder

- (void) generateStandardAlphabet {
    self.standardAlphabet = [NSMutableDictionary dictionary];
    
    self.alphabet = [NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",nil];
    
    NSInteger index = 0;
    
    for(NSString *character in self.alphabet)
    {
        
        [self.standardAlphabet setObject:character forKey:[NSNumber numberWithInteger:index]];
        index ++;
    }
    
    NSLog(@"STANDARD: %@", self.standardAlphabet);
}

-(void) generateRandomNumberSet {
    self.topOfRange = 26;
    
    self.exclude = [NSMutableArray array];
    
    int counter = 0;
    
    while (counter < self.topOfRange) {
        NSNumber *aRandom = [NSNumber numberWithUnsignedInt:(arc4random_uniform(self.topOfRange))];
        
        if (![self.exclude containsObject:aRandom]) {
            [self.exclude addObject:(aRandom)];
            counter++;
    
    NSLog(@" EXCLUDE: %@", self.exclude);
    
}
    }
}

- (void) generateCipher {
    
    self.cipher = [NSMutableDictionary dictionary];
    
    NSLog(@"EXCLUDE: %@", self.exclude);

    NSLog(@"alphabet : %@", self.alphabet);
    
    
    NSLog(@"A0: %@",[self.alphabet objectAtIndex:0]);
    NSLog(@"E0: %@",[self.exclude objectAtIndex:0]);

    
    for (NSInteger counter = 0; counter < [self.alphabet count]; counter ++)
    {
        
        [self.cipher setObject:[self.alphabet objectAtIndex:counter] forKey:[self.exclude objectAtIndex:counter]];
     
     }
    
    NSLog(@"%@", self.cipher);
}

- (void) userInputToChars : (NSString *) userInput {
    
    self.userInputChars = [[NSMutableArray alloc] initWithCapacity:[userInput length]];
    for (int i=0; i < [userInput length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [userInput characterAtIndex:i]];
        [self.userInputChars addObject:ichar];
    }
    
    NSLog(@"%@", self.userInputChars);
}

- (void) charsToCipherKeys {
    
    for (int i=0; i<[self.userInputChars count]; i++) {
        
        NSString *character = [self.userInputChars objectAtIndex:i];
        
        [self.charsToKeys addObjectsFromArray:[self.cipher valueForKey:[NSString stringWithFormat:@"%@", character]]];
        
    }
    NSLog(@"%@", self.userInputChars);
}
- (void) cipherKeysToChars {
    
    for (int i=0; i<[self.charsToKeys count]; i++) {
        NSString *key = [self.charsToKeys objectAtIndex: i];
        [self.charsToKeys addObjectsFromArray:[self.cipher allKeysForObject:[NSString stringWithFormat:@"%@", key]]];
    
    }
    NSLog(@"%@", self.charsToKeys);
}

- (NSString *) arrayToString {
    NSString* results = [[self.charsToKeys valueForKey: @"description"] componentsSeparatedByString:@" "];
    NSLog(@"%@", results);
    return results;
}

- (NSString *) encodeUserInput : (NSString *) userInput {
    
    [self userInputToChars: userInput];
    
    [self charsToCipherKeys];
    
    [self cipherKeysToChars];
    
    NSString *result = [self arrayToString];
    
    return result;
    
    NSLog(@"%@", result);
    

    
    }

@end

