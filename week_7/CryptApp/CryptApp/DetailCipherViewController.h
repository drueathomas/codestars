//
//  DetailCipherViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCipherViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *cipherNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *alterTextView;

@property (weak, nonatomic) IBOutlet UIButton *decodeButton;

@property (weak, nonatomic) IBOutlet UIButton *encodeButton;

@property (nonatomic) NSString *cipherName;
@property (nonatomic) NSString *userInput;
@property (strong, nonatomic) NSString * encodedText;
@property (nonatomic) NSMutableDictionary* cipher;


@end
