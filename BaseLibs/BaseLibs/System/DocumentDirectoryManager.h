//
//  DocumentDirectoryManager.h
//  BaseLib
//
//  Created by brookzhou on 16/6/21.
//  Copyright © 2016年 brookzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DocumentDirectoryManager : NSObject

+ (NSString*)getDirectoryWithDocumentDir:(NSString*)dirName;
//文件是否存在
+ (BOOL)isExistWithDocument:(NSString*)path;
+ (BOOL)deleteWithDocumentFile:(NSString*)pathFileName;

//清空Document Cache
+ (BOOL)deleteAllDocumentCacheFile:(NSMutableArray*)dirArray;
@end

