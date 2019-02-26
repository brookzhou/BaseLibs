//
//  SystemWifiManager.m
//  BaseLib
//
//  Created by brookzhou on 2017/5/17.
//  Copyright © 2017年 brookzhou. All rights reserved.
//

#import <ifaddrs.h>
#import <net/if.h>
#import <SystemConfiguration/CaptiveNetwork.h>
#import "SystemWifiManager.h"

@implementation SystemWifiManager

+ (BOOL) isWiFiEnabled {
    
    NSCountedSet * cset = [NSCountedSet new];
    struct ifaddrs *interfaces;
    if( ! getifaddrs(&interfaces) ) {
        for( struct ifaddrs *interface = interfaces; interface; interface = interface->ifa_next)
        {
            if ( (interface->ifa_flags & IFF_UP) == IFF_UP ) {
                [cset addObject:[NSString stringWithUTF8String:interface->ifa_name]];
            }
        }
    }
    return [cset countForObject:@"awdl0"] > 1 ? YES : NO;
}

+ (NSString *)getCurrentWifiSSID
{
    NSString *ssid = nil;
    NSArray *ifs = (__bridge   id)CNCopySupportedInterfaces();
    for (NSString *ifname in ifs) {
        NSDictionary *info = (__bridge id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifname);
        
        
        if (info && info[@"SSID"] )
        {
            ssid = info[@"SSID"];
           // NSData *ssiddata=info[@"SSIDDATA"];
        }
    }
    return ssid;
}

@end
