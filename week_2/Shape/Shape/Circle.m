//
//  Circle.m
//  Shape
//
//  Created by Drue Thomas on 8/13/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float) shapeArea
{
    float r = [self radiusInFeet];
    
    return 3.14 * (r * r);
}


@end
