//
//  Circle.h
//  Shape
//
//  Created by Drue Thomas on 8/13/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Circle : Shape

@property float radiusInFeet;

- (float) shapeArea;

@end