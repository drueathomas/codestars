//
//  CipherSingleton.m
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "CipherSingleton.h"
#import "Encoder.h"

@implementation CipherSingleton

+ (id)sharedManager {
    static CipherSingleton *c = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        c = [[self alloc] init];
    });
    return c;
}

- (id)init {
    if (self = [super init]) {
        activeDicts = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end
