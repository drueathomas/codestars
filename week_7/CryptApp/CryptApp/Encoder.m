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
    
    NSArray *alphabet = [NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",nil];
    
    NSInteger index = 0;
    
    for(NSString *character in alphabet)
    {
        index ++;
        [self.standardAlphabet setObject:character forKey:[NSNumber numberWithInteger:index]];
    }
}

-(void) generateRandomNumberSet {
    self.exclude = [NSMutableArray array];
    
    NSNumber *aRandom = [NSNumber numberWithUnsignedInt:arc4random_uniform(self.topOfRange)];
    
    while ([self.exclude containsObject:aRandom])
    {
        
        NSNumber *aRandom = [NSNumber numberWithUnsignedInt:arc4random_uniform(self.topOfRange)];
        [self.exclude addObject:aRandom];
        
    }
    
}


- (void) generateCipher {
    
    NSInteger counter = 0;
    NSInteger index = [self.userInputChars objectAtIndex:counter];
    
    NSArray *alphabet = [NSArray arrayWithObjects:[self.standardAlphabet allValues], nil];
    
    for (NSString *character in alphabet)
    {
        [self.cipher setObject:character forKey:[NSNumber numberWithInteger:index]];
        counter++;
        index = [self.exclude objectAtIndex:counter];
        
    }
}

- (void) userInputToChars {
    
    self.userInputChars = [[NSMutableArray alloc] initWithCapacity:[self.userInput length]];
    for (int i=0; i < [self.userInput length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self.userInput characterAtIndex:i]];
        [self.userInputChars addObject:ichar];
    }
}

- (void) charsToCipherKeys {
    
    for (int i=0; i<[self.userInputChars count]; i++) {
        
        NSString *character = [self.userInputChars objectAtIndex:i];
        
        [self.charsToKeys addObjectsFromArray:[self.cipher valueForKey:[NSString stringWithFormat:@"%@", character]]];
        
    }
}
- (void) cipherKeysToChars {
    
    for (int i=0; i<[self.charsToKeys count]; i++) {
        NSString *key = [self.charsToKeys objectAtIndex: i];
        [self.charsToKeys addObjectsFromArray:[self.cipher allKeysForObject:[NSString stringWithFormat:@"%@", key]]];
    
    }
}

- (NSString *) arrayToString : (NSArray *) array{
    NSString* results = [[array valueForKey: @"description"] componentsSeparatedByString:@" "];
    return results;
    
}

@end

