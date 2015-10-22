//
//  SharedCipher.h
//  CryptApp
//
//  Created by Drue Thomas on 10/21/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cipher.h"

@interface SharedCipher : NSObject

+(SharedCipher *)sharedInstance;

- (NSMutableArray*)getCiphers;

- (void)addCipher:(Cipher*)cipher;

- (void)deleteCipherAtIndex:(int)index;


@end
