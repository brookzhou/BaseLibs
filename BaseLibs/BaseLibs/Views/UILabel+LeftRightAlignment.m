//
//  UILabel+LeftRightAlignment.m
//  BaseLibs
//
//  Created by brookzhou on 2019/3/2.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import "UILabel+LeftRightAlignment.h"
#import <CoreText/CoreText.h>

@implementation UILabel (LeftRightAlignment)

- (void)textAlignmentLeftAndRight{
    
    [self textAlignmentLeftAndRightWith:CGRectGetWidth(self.frame)];
    
}

- (void)textAlignmentLeftAndRightWith:(CGFloat)labelWidth{
    if(self.text==nil||self.text.length==0) {
        return;
    }
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(labelWidth,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:self.font} context:nil].size;
    NSInteger length = (self.text.length-1);
    NSString* lastStr = [self.text substringWithRange:NSMakeRange(self.text.length-1,1)];
    if([lastStr isEqualToString:@":"]||[lastStr isEqualToString:@"："]) {
        length = (self.text.length-2);
    }
    CGFloat margin = (labelWidth - size.width)/length;
    NSNumber*number = [NSNumber numberWithFloat:margin];
    
    NSMutableAttributedString* attribute = [[NSMutableAttributedString alloc]initWithString:self.text];
    
    [attribute addAttribute:NSKernAttributeName value:number range:NSMakeRange(0,length)];
    self.attributedText= attribute;
}

@end
