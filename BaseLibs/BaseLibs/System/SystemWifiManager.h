//
//  SystemWifiManager.h
//  BaseLib
//
//  Created by brookzhou on 2017/5/17.
//  Copyright © 2017年 brookzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SystemConfiguration/CaptiveNetwork.h>

@interface SystemWifiManager : NSObject

+ (BOOL) isWiFiEnabled;
+ (NSString *)getCurrentWifiSSID;

@end
