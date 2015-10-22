//
//  Encoder.h
//  CryptApp
//
//  Created by Drue Thomas on 9/19/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Encoder : NSObject


@property (nonatomic) NSMutableDictionary* standardAlphabet;
@property (nonatomic) NSMutableDictionary* cipher;
@property (nonatomic) NSMutableArray* charsToKeys;
@property (nonatomic) NSMutableArray* userInputChars;
@property (nonatomic) NSMutableArray* exclude;
@property (nonatomic) NSMutableArray* keysToChars;
@property (nonatomic) NSInteger topOfRange;
@property (nonatomic) NSString * encodedText;
@property (nonatomic) NSArray *alphabet;
@property (nonatomic) NSString *cipherName;

//methods

- (void) generateStandardAlphabet;
- (void) generateRandomNumberSet;
- (NSMutableDictionary *) generateCipher;
- (void) userInputToChars : (NSString *) userInput;
- (void) charsToCipherKeys;
- (void) cipherKeysToChars;
- (void) cipherCharsToStandardKeys;
- (void) standardKeysToChars;
- (NSString *) arrayToString;

//encoding use input package
- (NSString *) encodeUserInput : (NSString *) userInput forCipher: (NSMutableDictionary *)cipher withName: (NSString *) name;

//decode user input
- (NSString *) decodeUserInput : (NSString *) userInput forCipher: (NSMutableDictionary *)cipher withName: (NSString *) name;

//save the cipher

-(void) saveCipher :(NSString *) name ;



@end
