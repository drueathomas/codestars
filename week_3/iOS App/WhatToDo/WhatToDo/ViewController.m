//
//  ViewController.m
//  WhatToDo
//
//  Created by Drue Thomas on 8/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import "Activities.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.nycActivities=[[Activities alloc] init];
    
    self.activityLabel.text = @"Welcome to What to Do in NYC!";
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"skyline.jpg"]];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClicked:(id)sender{
    
    self.activityLabel.text = [self.nycActivities randomActivitySelector];
     
}
@end
