//
//  SharedCipher.h
//  CryptApp
//
//  Created by Drue Thomas on 10/21/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Encoder.h"

@interface SharedCipher : NSObject

+(SharedCipher *)sharedInstance;

- (NSMutableArray*)getCiphers;

- (void)addCipher:(Encoder *)cipher withName: (NSString*)name;

- (void)deleteCipherWithName:(NSString*)name;


@end
