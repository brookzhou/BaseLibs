//
//  BaseCATransition.h
//  BaseLib
//
//  Created by brookzhou on 16/7/11.
//  Copyright © 2016年 brookzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/CoreAnimation.h>
#import <UIKit/UIKit.h>


@interface BaseCATransition : NSObject
/**
 *  返回CATransition动画
 *  @return  CATransition动画对象
 *  @param   transitionType 类型
 *  @param   subType  子类型
 *  @param   duration  时长
 *  @param   timingFunction  CAMediaTimingFunction类型
 *  @since   1.0.0 2015.05.18 18:20 zhou.
 *  @version 1.0.0
 */
- (CATransition*)getCATransitionWith:(NSString*)transitionType SubType:(NSString*)subType Duration:(CFTimeInterval)duration TimingFunction:(CAMediaTimingFunction*)timingFunction;

/**
 *  返回默认的CATransition动画
 *  @return   CATransition动画对象
 *  @since 1.0.0 2015.05.18 ..18:30 zhou.
 *  @version 1.0.0
 */
- (CATransition*)getDefaultTranstion;

/** 向上弹出动画效果
 *  view   view要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationPushUp:(UIView *)view;
+ (void)animationPushUp:(UIView *)view duration:(CFTimeInterval)duration;
/** 向下弹出动画效果
 *  @param   view 要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationPushDown:(UIView *)view;

/** 向右弹出动画效果
 *  @param   view 要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationPushRight:(UIView *)view;
/** 向左弹出动画效果
 *  @param view 要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationPushLeft:(UIView *)view;

/** 渐渐显示动画效果
 *  @param view  要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationRevealFromBottom:(UIView *)view;
+ (void)animationRevealFromBottom:(UIView *)view Duration:(CFTimeInterval)duration;

/** 打开相机动画效果
 *  @param view  要招待动画的view对象
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationCameraOpen:(UIView *)view;

+ (void)animationRippleEffect:(UIView *)view;
+ (void)animationRippleEffectWithCFTimeInterval:(CFTimeInterval)timeInterval View:(UIView *)view;

/** 位置移动动画效果
 *  @param   view 要招待动画的view对象
 *  @param   frame  view对象最终尺寸
 *  @since 1.0.0
 *  @version 1.0.0
 */
+ (void)animationMove:(UIView*)view Frame:(CGRect)frame;
@end
