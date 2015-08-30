//
//  Header.h
//  WhatToDo
//
//  Created by Drue Thomas on 8/22/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Activities : NSObject

@property (nonatomic) NSArray *activityArray;
@property (nonatomic) NSArray * imageArray;


- (NSString *) randomActivitySelector;
@end