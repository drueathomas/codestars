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
    
    self.encodedTextLabel.text = self.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
