//
//  CipherSingleton.h
//  CryptApp
//
//  Created by Drue Thomas on 10/17/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Encoder.h"

@interface CipherSingleton : NSObject {
    NSMutableDictionary *activeDicts;
}

@property (nonatomic, retain) NSMutableDictionary *activeDicts;

+ (id)sharedManager;


@end