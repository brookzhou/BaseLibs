//
//  BaseMacro.h
//  BaseLibs
//
//  Created by brookzhou on 2019/2/26.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#ifndef BaseMacro_h
#define BaseMacro_h

#ifdef DEBUG

#define SYSLOG(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else

#define SYSLOG(...) do {} while (0)

#endif
//物理高度
#define IS_IPHONE_4_VER       (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )480) < DBL_EPSILON )
#define IS_IPHONE_5_VER       (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )568) < DBL_EPSILON )
#define IS_IPHONE_6_7_8_VER       (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )667) < DBL_EPSILON )
#define IS_IPHONE_6_7_8_PLUS_VER  (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )736) < DBL_EPSILON )
#define IS_IPHONE_X_VER  (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )812) < DBL_EPSILON )
#define IS_IPHONE_XS_VER  (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )812) < DBL_EPSILON )
#define IS_IPHONE_XS_Max_VER  (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )896) < DBL_EPSILON )
#define IS_IPHONE_XR_VER  (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )896) < DBL_EPSILON )



#define IPHONE_WIDTH_4   320.0f
#define IPHONE_WIDTH_5   320.0f
#define IPHONE_WIDTH_6_7_8   375.0f
#define IPHONE_WIDTH_6P_7P_8P 414.0f
#define IPHONE_WIDTH_X_XS 375.0f
#define IPHONE_WIDTH_XS_Max_XR 414.0f

#define IPHONE_HEIGHT_4   480.0f
#define IPHONE_HEIGHT_5   568.0f
#define IPHONE_HEIGHT_6_7_8   667.0f
#define IPHONE_HEIGHT_6P_7P_8P 736.0f
#define IPHONE_HEIGHT_X_XS 812.0f  //iphoneX
#define IPHONE_HEIGHT_XS_Max_XR 896.0f


#endif /* BaseMacro_h */
