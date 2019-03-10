//
//  DataEncryption.h
//  BaseLibs
//
//  Created by brookzhou on 2019/3/11.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataEncryption : NSObject
+ (NSString *)md5DataEncryptionWithString:(NSString *)string;
+ (NSData *)md5DataEncryptionWithData:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
