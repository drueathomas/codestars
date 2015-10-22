//
//  Cipher.h
//  CryptApp
//
//  Created by Drue Thomas on 10/22/15.
//  Copyright © 2015 Drue Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cipher : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableDictionary *dict;



- (NSMutableDictionary*) updateCipher:(NSMutableDictionary *)cipher withName: (NSString *)name;
- (id)initWithName:(NSString*)name andCipherDict: (Cipher *) dict;

@end

