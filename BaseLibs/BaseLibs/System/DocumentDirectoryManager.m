//
//  DocumentDirectoryManager.m
//  BaseLib
//
//  Created by brookzhou on 16/6/21.
//  Copyright © 2016年 brookzhou. All rights reserved.
//

#import "DocumentDirectoryManager.h"

@implementation DocumentDirectoryManager

+ (NSString*)getDirectoryWithDocumentDir:(NSString*)dirName{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0]; // Get documents folder
    NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:dirName];
    NSError *error;
    if (![[NSFileManager defaultManager] fileExistsAtPath:dataPath])
        [[NSFileManager defaultManager] createDirectoryAtPath:dataPath withIntermediateDirectories:NO attributes:nil error:&error]; //Create
    
    return dataPath;
}
+ (BOOL)isExistWithDocument:(NSString*)path{
    
    return [[NSFileManager defaultManager] fileExistsAtPath:path];
}
+ (BOOL)deleteWithDocumentFile:(NSURL*)pathFileName{
    
    
    //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *documentsDirectory = [paths objectAtIndex:0]; // Get documents folder
    //NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:dirName];

    NSError *error ;
    BOOL isRemove=NO;
    if ([[NSFileManager defaultManager] fileExistsAtPath:[pathFileName absoluteString]]){
        
        isRemove=[[NSFileManager defaultManager]removeItemAtPath:[pathFileName absoluteString] error:&error];
    }
    
    return isRemove;
}
+ (BOOL)deleteAllDocumentCacheFile:(NSMutableArray*)dirArray{
    
    BOOL isDel=YES;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSArray *contents = [fileManager contentsOfDirectoryAtPath:documentsDirectory error:NULL];
    NSEnumerator *e = [contents objectEnumerator];
    
    NSString *filename;
    while ((filename = [e nextObject])) {
       
        
        if([dirArray containsObject:filename]){
            
            isDel=[fileManager removeItemAtPath:[documentsDirectory stringByAppendingPathComponent:filename] error:NULL];
        }
        
    }
    return isDel;
}
@end
