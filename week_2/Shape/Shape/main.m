//
//  main.m
//  Shape
//
//  Created by Drue Thomas on 8/9/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create a shape/square/circle object; allocate in memory
        
        Shape *rec = [[Shape alloc] init];
        Square *squ = [[Square alloc] init];
        Circle *cir = [[Circle alloc] init];
        
        
        
        //set values for height and width
        
        [rec setWidthInFeet:12];
        [rec setHeightInFeet:5];
        
        squ.heightInFeet = 21;
        squ.widthToHeight;
        
        
        cir.radiusInFeet = 3.43;
        
        
        // hold values for method returns
    
        NSLog(@"Shape \"rec\" is %.2f Feet tall and %.2f Feet wide.", [rec heightInFeet], [rec widthInFeet]);
        
        // Log some values using custom method
        NSLog(@"\"rec\" has an area of %.2f.", [rec shapeArea]);
        
    
        NSLog(@"Shape \"squ\" is %.2f Feet tall and %.2f Feet wide.", [squ heightInFeet], [squ widthInFeet]);
        
        // Log some values using custom methods

        NSLog(@"\"squ\" has an area of %.2f.", [squ shapeArea]);

        
        
        NSLog(@"Shape \"cir\" has a radius of %.2f feet", [cir radiusInFeet]);
        
        // Log some values using custom methods
       
        NSLog(@"\"cir\" has an area of %.2f.", [cir shapeArea]);

    }
    return 0;
}
