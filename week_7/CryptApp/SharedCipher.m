//
//  SharedCipher.m
//  CryptApp
//
//  Created by Drue Thomas on 10/21/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import "SharedCipher.h"
#import "SavedCiphers.h"

@interface SharedCipher (){
    SavedCiphers *savedCiphers;
    
}

@end

@implementation SharedCipher
- (id)init
{
    self = [super init];
    if (self) {
        savedCiphers = [[SavedCiphers alloc] init];
        
    }
    return self;
}


+ (SharedCipher *)sharedInstance
{
    //Declare a static variable to hold the instance of your class globally
    static SharedCipher *_sharedInstance = nil;
    
    //Ensure the code is only excecuted once
    static dispatch_once_t oncePredicate;
    
    //Use GCD to execute a block which initializes an instance of SharedCipher
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[SharedCipher alloc] init];
    });
    return _sharedInstance;
}



- (NSArray*)getCiphers
{
    return [savedCiphers getCiphers];
}

- (void)addCipher:(Cipher*)cipher
{
    
    [savedCiphers addCipher:cipher];
}

- (void)deleteCipherAtIndex:(int)index
{
    [savedCiphers deleteCipherAtIndex:index];

}




@end
