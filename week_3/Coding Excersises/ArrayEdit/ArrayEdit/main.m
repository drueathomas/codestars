//
//  main.m
//  ArrayEdit
//
//  Created by Drue Thomas on 8/20/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayEdit.h"


int main(int argc, const char * argv[]) {
    
    ArrayEdit *instance1 = [[ArrayEdit alloc]init];
    
    NSArray *a = @[@"cat", @"dog", @"frog"];
    
    NSArray *arr = [instance1 capitalizeArray:a];
    
    NSLog(@"%@", arr);
    
    NSArray *a1 = @[@1, @2, @3];
    NSArray *a2 = @[@4, @5, @6];
    
    NSArray *a3 = [instance1 addOneArray:a1 toAnother:a2];
    
    NSLog(@"%@", a3);
    
    NSDictionary *car1 = @{
                           @"make": @"Toyota",
                           @"model": @"Camary",
                           @"year": @"1995"
                           };
    
    NSDictionary *car2 = @{
                           @"make": @"Volkswagen",
                           @"model": @"Jetta",
                           @"year": @"2010"
                           };
    
    NSDictionary *car3 = @{
                           @"make": @"BMW",
                           @"model": @"Alpina",
                           @"year": @"2016"
                           };
    
    NSDictionary *car4 = @{
                           @"make": @"Ford",
                           @"model": @"Focus",
                           @"year": @"2009"
                           };
    NSDictionary *car5 = @{
                           @"make": @"Mercedes",
                           @"model": @"AMG",
                           @"year": @"2015"
                           };
    
    NSMutableArray *cars = [NSMutableArray arrayWithObjects:
                            car1, car2, car3, car4, car5, nil];
    
    
    [instance1 printDictionary:cars];
    
    
    
    
    
    return 0;
}
