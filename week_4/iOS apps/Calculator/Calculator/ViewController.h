//
//  ViewController.h
//  Calculator
//
//  Created by Drue Thomas on 8/31/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//



#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *readout;



-(IBAction)userInputToString:(UIButton*)button;

-(IBAction)add:(UIButton *)input;
-(IBAction)subtract:(UIButton *)input;
-(IBAction)multiply:(UIButton *)input;
-(IBAction)divide:(UIButton *)input;



-(IBAction)clear:(UIButton *)input;




-(IBAction)equals:(UIButton *)input;



@end

