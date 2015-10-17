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
@property (nonatomic) NSInteger topOfRange;
@property (nonatomic, strong) NSString * encodedText;
@property (nonatomic, strong) NSArray *alphabet;
@property (nonatomic) NSString *cipherName;

//methods

- (void) generateStandardAlphabet;
- (void) generateRandomNumberSet;
- (void) generateCipher;

- (void) userInputToChars : (NSString *) userInput;
- (void) charsToCipherKeys;
- (void) cipherKeysToChars;
- (void) cipherCharsToStandardKeys;
- (void) standardKeysToChars;
- (NSString *) arrayToString;

//encoding use input package
- (NSString *) encodeUserInput : (NSString *) userInput;

//decode user input
-(NSString *) decodeUserInput : (NSString *) userInput;

//save the cipher

-(void) saveCipher;



@end
