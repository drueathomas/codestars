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

@interface DetailCipherViewController (){
    Encoder *c1;
}

@end

@implementation DetailCipherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Encoder *c1 = [[Encoder alloc] init];
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
    
    self.cipherName = name;
    
    
    Encoder *c = [[Encoder alloc] init];
    self.cipher = cipher;
    
    [c userInputToChars: userInput];
    
    [c cipherCharsToStandardKeys];
    
    [c standardKeysToChars];
    
    NSString *result = [c arrayToString];
    
    NSLog(@"%@", result);
    
    return result;
    
}
- (NSString *) encodeUserInput : (NSString *) userInput forCipher: (NSMutableDictionary *)cipher withName: (NSString *) name{

    _cipherName = name;
    
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
    NSMutableDictionary *storedCipher = [NSMutableDictionary dictionary];
    
    [c1 generateStandardAlphabet];
    
    NSString *key = @"name";
    
    NSString *name = self.cipherName;
    
    for (NSMutableDictionary *dict in allCiphers){
        if([dict valueForKey:key]== name)
           storedCipher = dict;
    }
    

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
