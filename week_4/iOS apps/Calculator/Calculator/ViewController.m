//
//  ViewController.m
//  Calculator
//
//  Created by Drue Thomas on 8/31/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// check


{
    NSNumber *number1;
    NSNumber *total;
    NSNumber *updateScreen;
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(IBAction)userInputToString:(UIButton*)button{
    if (updateScreen != nil) {
        self.readout.text = @"0";
        updateScreen = nil;
    } else {
        
        
        NSString *userInput = [button currentTitle];
        
        NSString *displayInput = self.readout.text;
        
        
        NSString *combinedString = [displayInput stringByAppendingString:userInput];
        
        
        self.readout.text = combinedString;
        float forTotal = [combinedString floatValue];
        number1 = [[NSNumber alloc]initWithFloat:forTotal];
        NSLog(@"%@", number1); }
    
    
}



-(IBAction)add:(UIButton *)functionButton{
    self.readout.text = @"0";
    float newtotal = [number1 floatValue] + [total floatValue];
    total = [[NSNumber alloc]initWithFloat:newtotal];
    number1 = nil;
    NSLog(@"%@", total);
    
    
}


-(IBAction)subtract:(UIButton *)input{
    
    self.readout.text = @"0";
    float newtotal = [number1 floatValue] - [total floatValue];
    total = [[NSNumber alloc]initWithFloat:newtotal];
    number1 = nil;
    NSLog(@"%@", total);
    
}

-(IBAction)multiply:(UIButton *)input{
    if (total == nil) {
        total = @1;
    }
    
    self.readout.text = @"0";
    float newtotal = [number1 floatValue] * [total floatValue];
    total = [[NSNumber alloc]initWithFloat:newtotal];
    number1 = nil;
    NSLog(@"%@", total);
    
}

-(IBAction)divide:(UIButton *)input{
    if (total == nil) {
        total = @1;
    }
    
    self.readout.text = @"0";
    float newtotal = [number1 floatValue] / [total floatValue];
    total = [[NSNumber alloc]initWithFloat:newtotal];
    number1 = nil;
    NSLog(@"%@", total);
    
    
}



-(IBAction)clear:(UIButton *)input{
    self.readout.text = @"0";
    total = nil;
    
}



-(IBAction)equals:(UIButton *)input{
    self.readout.text = [[NSString alloc]initWithFormat:@"%@",total];
    updateScreen = @1;
    
}
@end