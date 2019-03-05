//
//  BaseUITextField.h
//  BaseLib
//
//  Created by brookzhou on 2017/5/22.
//  Copyright © 2017年 brookzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

/** --文本改变代理-- */
@protocol TextFieldContentStatusDelegate <NSObject>

- (void)textFieldContentExistStringStatus:(BOOL)status TextField:(UITextField*)textField;

@end

@interface BaseUITextField : UITextField

@property(nonatomic,assign)id<TextFieldContentStatusDelegate> statusDelegate;


/**
 文本内容改变调用本事件

 @param sender self
 */
- (void)activeContentChangeEvent:(id)sender;

/**
 判断并返回当前是否有文本内容

 @return 是否存在内容
 */
- (BOOL)getContentIsExist;
@end
