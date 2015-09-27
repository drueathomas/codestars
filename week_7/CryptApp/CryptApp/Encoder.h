//
//  Encoder.h
//  CryptApp
//
//  Created by Drue Thomas on 9/19/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Encoder : NSObject

@property (nonatomic, strong) NSMutableDictionary* standardAlphabet;
@property (nonatomic, strong) NSMutableDictionary* cipher;
@property (nonatomic, strong) NSMutableDictionary* activeCiphers;


@property (nonatomic, strong) NSMutableArray* charsToKeys;
@property (nonatomic, strong) NSMutableArray* userInputChars;
@property (nonatomic, strong) NSMutableArray* exclude;
@property (nonatomic, strong) NSMutableArray* keysToChars;
@property (nonatomic, strong) NSString* userInput;
@property (nonatomic) NSInteger topOfRange;

//methods

- (void) generateStandardAlphabet;
- (void) generateCipher;
- (void) generateRandomNumberSet;
- (void) userInputToChars;
- (void) charsToCipherKeys;
- (void) cipherkeysToChars;
- (NSString *) arrayToString : (NSArray *) array;

//
- (void) encodeUserInput;






@end
