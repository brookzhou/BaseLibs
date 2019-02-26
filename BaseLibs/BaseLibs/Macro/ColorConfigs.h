//
//  ColorConfigs.h
//  BaseLibs
//
//  Created by brookzhou on 2019/2/27.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#ifndef ColorConfigs_h
#define ColorConfigs_h


/**
 通过rgba返回颜色UIColor
 
 @param r R值
 @param g G值
 @param b B值
 @param a A值
 @return 颜色UIColor
 */
#define ColorFromRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

//ex.  0x43214
/**
 通过0xffffff十六进制值返回颜色UIColor
 
 @param s 十六进制值
 @return 颜色UIColor
 */
#define UIColorFromHexString(s)  [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:1.0]

#define UIColorAlphaFromHexString(s,alpha_value)  [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:alpha_value]

#endif /* ColorConfigs_h */
