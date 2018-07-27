//
//  BackView.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/27.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "BackView.h"

@implementation BackView

+ (instancetype)backViewWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action title:(NSString *)title{
    
    UIButton * backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:highImage forState:UIControlStateHighlighted];
    [backButton sizeToFit];
    [backButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    BackView * view = [[self alloc] initWithFrame:backButton.bounds];
    [view addSubview:backButton];
    
    return view;
    
}

@end
