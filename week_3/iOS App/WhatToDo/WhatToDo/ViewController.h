//
//  ViewController.h
//  WhatToDo
//
//  Created by Drue Thomas on 8/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Activities.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *activityLabel;
@property (strong, nonatomic) Activities* nycActivities;
@property (nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)buttonClicked:(id)sender;




@end

