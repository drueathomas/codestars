//
//  HomeViewController.h
//  CryptApp
//
//  Created by Drue Thomas on 9/27/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController  <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textToEncode;
@property (weak, nonatomic) IBOutlet UIButton *generateCipherButton;
@property (weak, nonatomic) IBOutlet UILabel *welcomeText;
@property (weak, nonatomic) IBOutlet UILabel *instructions;
@property (weak, nonatomic) IBOutlet UITextField *cipherNameInput;

@property (nonatomic, assign) id currentResponder;

@property (strong, nonatomic) NSString * userInput;
@property (nonatomic) NSString *cipherName;
@property (strong, nonatomic) NSString * encodedText;





@end
