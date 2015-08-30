//
//  main.m
//  TVShows
//
//  Created by Drue Thomas on 8/24/15.
//  Copyright (c) 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVShows.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        TVShows *tv = [[TVShows alloc] init];
        
        NSDictionary *show1 = @{ @"network": @"AMC", @"showName": @"Breaking Bad", @"starring":@"Bryan Cranston"};
        NSDictionary *show2 = @{ @"network": @"HBO", @"showName": @"True Detective", @"starring":@"Matthew McConaughey and Woody Harrelson"};
        NSDictionary *show3 = @{ @"network": @"FX", @"showName": @"Archer", @"starring":@"H. Jon Benjamin and Judy Greer"};
        NSDictionary *show4 = @{ @"network": @"The WB", @"showName": @"Charmed", @"starring":@"Alyssa Milano, Holly Marie Combs, and Rose McGowan"};
        
        NSArray *myShows = [[NSArray alloc] initWithObjects:show1, show2, show3, show4, nil];
        
        [tv printDictionary:myShows];
            
        }
    return 0;
}
