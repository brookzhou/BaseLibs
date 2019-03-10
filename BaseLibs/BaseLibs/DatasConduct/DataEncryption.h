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

/**
 MD5 NSString加密

 @param string 要加密的字符串
 @return 返回l加密结果
 */
+ (NSString *)md5DataEncryptionWithString:(NSString *)string;
/**
 MD5 NSDataData加密
 
 @param data 要加密的NSData
 @return 返回加密结果
 */
+ (NSData *)md5DataEncryptionWithData:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
