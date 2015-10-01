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
@property (nonatomic, strong) NSMutableArray* activeCiphers;
@property (nonatomic, strong) NSMutableArray* charsToKeys;
@property (nonatomic, strong) NSMutableArray* userInputChars;
@property (nonatomic, strong) NSMutableArray* exclude;
@property (nonatomic, strong) NSMutableArray* keysToChars;
@property (nonatomic) NSInteger topOfRange;
@property (nonatomic, strong) NSString * encodedText;
@property (nonatomic, strong) NSArray *alphabet;

//methods

- (void) generateStandardAlphabet;
- (void) generateRandomNumberSet;
- (void) generateCipher;

- (void) userInputToChars : (NSString *) userInput;
- (void) charsToCipherKeys;
- (void) cipherkeysToChars;
- (NSString *) arrayToString;

//encoding use input package
- (NSString *) encodeUserInput : (Encoder *) encode : (NSString *) userInput;


@end