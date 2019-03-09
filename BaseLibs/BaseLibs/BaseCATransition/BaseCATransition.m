//
//  BaseCATransition.m
//  BaseLib
//
//  Created by brookzhou on 16/7/11.
//  Copyright © 2016年 brookzhou. All rights reserved.
//

#import "BaseCATransition.h"

@implementation BaseCATransition

- (CATransition*)getCATransitionWith:(NSString*)transitionType SubType:(NSString*)subType Duration:(CFTimeInterval)duration TimingFunction:(CAMediaTimingFunction*)timingFunction{
    
    CATransition *transaction =[CATransition animation];
    [transaction setDuration:duration];
    [transaction setType:transitionType];
    [transaction setSubtype:subType];
    //[transaction setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
    [transaction setTimingFunction:timingFunction];
    return transaction;
}
- (CATransition*)getDefaultTranstion{
    
    return [self getCATransitionWith:@"KCATransitionFade" SubType:kCATransitionFromLeft Duration:0.6 TimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];;
}

+ (void)animationPushUp:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.45f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromTop];
    
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationPushUp:(UIView *)view duration:(CFTimeInterval)duration
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:duration];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromTop];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationPushDown:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.45f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromBottom];
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationPushLeft:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.45f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromLeft];
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationPushRight:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.45f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromRight];
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationRevealFromBottom:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.35f];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromBottom];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRevealFromBottom:(UIView *)view Duration:(CFTimeInterval)duration
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:duration];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromBottom];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCameraOpen:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.35f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cameraIrisHollowOpen"];
    [animation setSubtype:@"fromRight"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRippleEffect:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.35f];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"rippleEffect"];
    
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationRippleEffectWithCFTimeInterval:(CFTimeInterval)timeInterval View:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:timeInterval];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"rippleEffect"];
    
    [view.layer addAnimation:animation forKey:nil];
}
+ (void)animationMove:(UIView*)view Frame:(CGRect)frame{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.5];
    
    [UIView setAnimationDelegate:self];
    
    // [UIView setAnimationDidStopSelector:@selector(didStopAnimation)];
    
    
    [view setFrame:frame];
    [UIView commitAnimations];
}
@end
