//
//  SaveCipherViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "EncodedTextViewController.h"
#import "Encoder.h"
#import "SaveCipherViewController.h"


@interface SaveCipherViewController ()

@end

@implementation SaveCipherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myTitle = self.cipherTitle.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EncodedTextViewController *encode = segue.destinationViewController;
    
    encode.myCipherName = self.myTitle;
    
    
}


@end
