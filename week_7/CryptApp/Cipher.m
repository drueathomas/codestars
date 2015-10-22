//
//  Cipher.m
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "Cipher.h"

@interface Cipher (){
     Cipher* c;
    NSMutableDictionary *cipher;
    
}

@end
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

- (NSMutableDictionary*) updateCipher:(NSMutableDictionary *)currentCipher withName: (NSString *)name{

    [currentCipher setValue:name forKey:@"name"];
    
    return currentCipher;
    
    
}

@end


