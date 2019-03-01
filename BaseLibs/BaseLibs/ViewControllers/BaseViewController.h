//
//  BaseViewController.h
//  BaseLibs
//
//  Created by brookzhou on 2019/3/1.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController


//使用此方法后可直接重写 gestureActive方法并处理点击view 事件
- (void)addUITapGestureRecognizer;

@end

NS_ASSUME_NONNULL_END
