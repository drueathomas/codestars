//
//  ArrayEdit.m
//  ArrayEdit
//
//  Created by Drue Thomas on 8/20/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayEdit.h"

@implementation ArrayEdit

- (NSArray *) capitalizeArray : (NSMutableArray *)a {
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSString *capString;
    
    for (NSString *str in a)
    {
        
        capString = [str uppercaseString];
        [arr addObject:capString];
        
    }
    
    return arr;
}

- (NSArray *) addOneArray : (NSArray *) arr1 toAnother : (NSArray *) arr2 {
    
    NSMutableArray *arr3 = [[NSMutableArray alloc]init];
    
    [arr3 addObjectsFromArray:arr1];
    [arr3 addObjectsFromArray:arr2];
    
    return arr3;
}

- (void) printDictionary : (NSArray *) cars {
    
    
    for (NSDictionary *myCars in cars)
    {
        NSLog(@"%@ %@ %@",[myCars objectForKey:@"year"],[myCars objectForKey:@"make"],[myCars objectForKey:@"model"]);
    }
    
    
    
}


@end

