//
//  Header.h
//  TVShows
//
//  Created by Drue Thomas on 8/24/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVShows.h"

@interface TVShows : NSObject

@property (nonatomic) NSMutableArray *myShows;

- (void) printDictionary: (NSArray *)arr;


@end