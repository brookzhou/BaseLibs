//
//  BaseUITextField.m
//  BaseLib
//
//  Created by brookzhou on 2017/5/22.
//  Copyright © 2017年 brookzhou. All rights reserved.
//

#import "BaseUITextField.h"

@implementation BaseUITextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)activeContentChangeEvent:(id)sender{
    BOOL status=NO;
    if(self.text && ![self.text isEqualToString:@""]){
        status=YES;
    }else{
        status=NO;
    }
    if(self.statusDelegate && [self.statusDelegate respondsToSelector:@selector(textFieldContentExistStringStatus:TextField:)]){
        [self.statusDelegate textFieldContentExistStringStatus:status TextField:self];
    }
    
}
- (BOOL)getContentIsExist{
    
    NSString *tem = /*[[self.text componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]componentsJoinedByString:@""];*/
    [self.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    if ([tem isEqualToString:@""]) {
        return NO;
    }
    self.text=tem;
    if(!self.text || [self.text isEqualToString:@""]){
        
        return NO;
    }else{
        return YES;
    }
}

@end
