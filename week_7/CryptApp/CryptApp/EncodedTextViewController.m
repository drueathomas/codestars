//
//  EncodedTextViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 10/15/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "EncodedTextViewController.h"
#import "Encoder.h"

@interface EncodedTextViewController ()

@end

@implementation EncodedTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.encodedTextLabel.text = self.myText;
    NSLog(@"%@", self.encodedTextLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)copyText
{
    [[UIPasteboard generalPasteboard] setString:self.encodedTextLabel.text];
}




#pragma mark - Navigation




@end
