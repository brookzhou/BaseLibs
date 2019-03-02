//
//  UILabel+LeftRightAlignment.h
//  BaseLibs
//
//  Created by brookzhou on 2019/3/2.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (LeftRightAlignment)

//两端对齐

- (void)textAlignmentLeftAndRight;

//指定Label以最后的冒号对齐的width两端对齐

- (void)textAlignmentLeftAndRightWith:(CGFloat)labelWidth;

@end

NS_ASSUME_NONNULL_END
