//
//  TVShows.m
//  TVShows
//
//  Created by Drue Thomas on 8/24/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVShows.h"


@implementation TVShows

- (void) printDictionary:(NSArray *)arr {
    
    //NSMutableDictionary *a = [[NSMutableDictionary alloc] init];

    for (NSDictionary *dict in arr){
       
    //[a addEntriesFromDictionary:[[dict allValues] objectAtIndex:0]];
        

        NSLog(@"%@'s %@, starring %@", [dict objectForKey:@"network"], [dict objectForKey:@"showName"], [dict objectForKey:@"starring"]);
    }
    
}

@end