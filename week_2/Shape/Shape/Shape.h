//
//  Header.h
//  Shape
//
//  Created by Drue Thomas on 8/9/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

//properties for Shape
@property float  heightInFeet;
@property float  widthInFeet;


// instance method that calculates area
- (float)shapeArea;


@end
