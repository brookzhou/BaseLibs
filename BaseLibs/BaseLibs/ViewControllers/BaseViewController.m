//
//  BaseViewController.m
//  BaseLibs
//
//  Created by brookzhou on 2019/3/1.
//  Copyright © 2019 brookzhou. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>{
    
    UITapGestureRecognizer *tapGestureRecognizer;
}

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - GestureRecognizer
- (void)addUITapGestureRecognizer{
    
    tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureActive:)];
    //设置成NO表示当前控件响应后会传播到其他控件上，默认为YES。
    tapGestureRecognizer.cancelsTouchesInView = NO;
    [tapGestureRecognizer setDelegate:self];
    
    [self.view addGestureRecognizer:tapGestureRecognizer];
}
//继承后可重新此方法
- (void)gestureActive:(id)sender{
    
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    
    if([[touch view]isKindOfClass:[UIButton class]]){
        
        return NO;
    }
    return YES;
}

@end
