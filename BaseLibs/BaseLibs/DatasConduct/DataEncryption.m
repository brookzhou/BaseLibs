//
//  DataEncryption.m
//  BaseLibs
//
//  Created by brookzhou on 2019/3/11.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import "DataEncryption.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation DataEncryption
+ (NSString *)md5DataEncryptionWithString:(NSString *)string
{
    const char *object = [string UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(object,(CC_LONG)strlen(object),result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i ++) {
        [hash appendFormat:@"%02X", result[i]];
    }
    return [hash lowercaseString];
}


+ (NSData *)md5DataEncryptionWithData:(NSData *)data
{
    Byte byte[CC_MD5_DIGEST_LENGTH];    
    CC_MD5((const void*)([data bytes]), (CC_LONG)[data length], byte);
    return [NSData dataWithBytes:byte length:CC_MD5_DIGEST_LENGTH];
}
@end
