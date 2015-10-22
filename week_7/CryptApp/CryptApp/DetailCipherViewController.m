//
//  DetailCipherViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "DetailCipherViewController.h"
#import "Encoder.h"
#import "SharedCipher.h"
#import "EncodedTextViewController.h"
#import "DecodedTextViewController.h"

@interface DetailCipherViewController ()

@end

@implementation DetailCipherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cipherNameLabel.text = self.cipherName;
    self.userInput = self.alterTextView.text;
    
    [self.view addSubview:self.decodeButton];
    [self.view addSubview:self.encodeButton];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *) decodeUserInput : (NSString *) userInput forCipher: (NSMutableDictionary *)cipher withName: (NSString *) name{
    
    _cipherName = name;
    
    
    Encoder *c = [[Encoder alloc] init];
    c.cipher = cipher;
    
    [c userInputToChars: userInput];
    
    [c cipherCharsToStandardKeys];
    
    [c standardKeysToChars];
    
    NSString *result = [c arrayToString];
    
    NSLog(@"%@", result);
    
    return result;
    
}
- (NSString *) encodeUserInput : (NSString *) userInput forCipher: (NSMutableDictionary *)cipher withName: (NSString *) name{

    _cipherName = name;
    
    Encoder *c1 = [[Encoder alloc] init];
    c1.cipher = cipher;
    
    [c1 userInputToChars: userInput];
    
    [c1 charsToCipherKeys];
    
    [c1 cipherKeysToChars];
    
    NSString *result = [c1 arrayToString];
    
    return result;
    
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSMutableArray *allCiphers = [[SharedCipher sharedInstance] getCiphers];
    NSString *key = @"name";
    
    NSString *str = self.cipherName;
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"(%K == %@)", key, str];
    NSMutableDictionary *storedCipher = [[allCiphers filteredArrayUsingPredicate:pred]objectAtIndex:0];
    BOOL success = storedCipher.count > 0;
    
    Encoder *c1 = [[Encoder alloc] init];

    if ([segue.identifier isEqualToString:@"showEncodedText"]) {
        self.encodedText = [c1 encodeUserInput:self.userInput forCipher:storedCipher withName:self.cipherName];
        
        EncodedTextViewController *encodedViewController = segue.destinationViewController;
        encodedViewController.myText = self.encodedText;

    } else if ([segue.identifier isEqualToString:@"showDecodedText"]) {
       self.encodedText = [c1 decodeUserInput:self.userInput forCipher:storedCipher withName:self.cipherName];
        DecodedTextViewController *decodedViewController = segue.destinationViewController;
        decodedViewController.myText = self.encodedText;
    }
}


@end
