//
//  Cipher.m
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "Cipher.h"

@implementation Cipher

- (id)initWithName:(NSString*)name andCipherDict: (NSMutableDictionary *) dict{
    
    self = [super init];
    if (self)
    {
        _name = name;
        _dict = dict;
    }
    return self;
}

@end
