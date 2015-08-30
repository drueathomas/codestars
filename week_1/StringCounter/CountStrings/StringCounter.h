//
//  CountStrings.h
//  CountStrings
//
//  Created by Drue Thomas on 8/9/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

//properties

@interface StringCounter: NSObject

@property NSString *myString;


- (int) countTheWords:(NSString *)myString;

- (int) countTheVowels:(NSString *)myString;


@end