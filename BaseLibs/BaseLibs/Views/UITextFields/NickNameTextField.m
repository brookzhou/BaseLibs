//
//  NickNameTextField.m
//  BaseLib
//
//  Created by brookzhou on 2017/5/25.
//  Copyright © 2017年 brookzhou. All rights reserved.
//

#import "NickNameTextField.h"
@interface NickNameTextField()<UITextFieldDelegate>{
    
}
@end

@implementation NickNameTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setDelegate:self];
        [self addTarget:self action:@selector(activeContentChangeEvent:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setDelegate:self];
        [self addTarget:self action:@selector(activeContentChangeEvent:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

#pragma mark - textField Delegate
//长度限制
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if((textField.text.length+string.length)>NICK_NAME_LENGTH)
        return NO;
    /*NSString *tem = [[string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]componentsJoinedByString:@""];
    if (![string isEqualToString:tem]) {
        return NO;
    }
    */
    
    
    return YES;
}

@end
