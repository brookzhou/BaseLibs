//
//  BaseStyle.h
//  BaseLib
//
//  Created by brookzhou on 16/6/3.
//  Copyright © 2016年 brookzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKIt.h>

@interface BaseStyle : NSObject

/**
 *  颜色生成图片
 *
 *  @param   color 设置的颜色
 *  @param   size  设置的尺寸大小
 *  @return   UIImage  图片类型
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)imageWithDrawARCColor:(UIColor *)color size:(CGSize)size;
/**渐变色*/
+ (UIImage *)imageWithGradientRampColor:(UIColor *)startColor EndColor:(UIColor *)endColor size:(CGRect)rect;
@end
