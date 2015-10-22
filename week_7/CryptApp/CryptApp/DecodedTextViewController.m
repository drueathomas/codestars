//
//  DecodedTextViewController.m
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "DecodedTextViewController.h"

@interface DecodedTextViewController ()

@end

@implementation DecodedTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.decodedTextLabel.text = self.myText;
    NSLog(@"%@", self.decodedTextLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)copyText
{
    [[UIPasteboard generalPasteboard] setString:self.decodedTextLabel.text];
}


@end
