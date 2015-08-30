//
//  Activities.m
//  WhatToDo
//
//  Created by Drue Thomas on 8/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Activities.h"
#import <UIKit/UIKit.h>


@implementation Activities

- (Activities *)init {
    
    self = [super init];
    if (self) {
        _activityArray = [[NSArray alloc] initWithObjects:@"Cross the Brooklyn Bridge!", @"See the Freedom Tower!", @"See the Statue of Liberty!", @"Take a stroll in Central Park!", @"See a Broadway Show!", nil];
        
        _imageArray = [[NSArray alloc] initWithObjects:
                       [UIImage imageNamed:@"brooklynbridge.jpg"],
                       [UIImage imageNamed:@"freedomtower.jpg"],
                       [UIImage imageNamed:@"statueofliberty.jpg"],
                       [UIImage imageNamed:@"centralpark.jpg"],
                       [UIImage imageNamed:@"broadway.jpg"],nil];
        
       
        
    }
    return self;
}
- (NSString *) randomActivitySelector {
        
    int random = arc4random_uniform(self.activityArray.count);
    
    //self.view.backgroundColor = self.imageArray[random];
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"%@", _imageArray[random]]];
    
    NSString *imageName = _imageArray[random];
    
     UIImage *imageview = [[UIImage alloc]init];
     imageview = [UIImage imageNamed:imageName];
    
    return [self.activityArray objectAtIndex:random];
    
    
}

@end
