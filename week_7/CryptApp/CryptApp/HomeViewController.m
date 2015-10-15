//
//  HomeViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 9/27/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "HomeViewController.h"
#import "Encoder.h"
#import "EncodedTextViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
- (void)viewDidLoad
{
    [super viewDidLoad];

    
    [self.view addSubview:self.generateCipherButton];
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// pragma mark is used for easy access of code in Xcode
#pragma mark - TextField Delegates

// This method is called once we click inside the textField
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"Text field did begin editing");
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Text field ended editing");
    
}

// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)buttonPressed:(UIButton *)button {
    NSLog(@"Button Pressed");
    
    
    
}
- (IBAction)showMessage
{
    self.userInput = self.textToEncode.text;
    
    Encoder *c1 = [[Encoder alloc] init];
    
    [c1 generateStandardAlphabet];
    
    [c1 generateRandomNumberSet];
    
    [c1 generateCipher];
    
    [c1 userInputToChars: self.userInput];
    
    [c1 charsToCipherKeys];
    
    [c1 cipherKeysToChars];
    
    self.encodedText = [c1 arrayToString];
    
    NSLog(@"ENCODED TEXT: %@", self.encodedText);
    
    UIAlertController *generatingAlert = [UIAlertController alertControllerWithTitle:@"Generating Cipher for Message:" message:(@"%@", self.userInput) preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [generatingAlert addAction:okayAction];
    
    // Display the Hello World Message
    [self presentViewController:generatingAlert animated:YES completion:nil];
    
   
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showEncodedText"]) {
        NSString *result = self.encodedText;
        EncodedTextViewController *encodedViewController = segue.destinationViewController;
       encodedViewController.text = result;
        
    }
}
@end