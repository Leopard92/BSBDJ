//
//  NavigationBar.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/27.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "NavigationBar.h"
#import "BackView.h"

@interface NavigationBar ()

@property (nonatomic, assign) BOOL isSub;

@end

@implementation NavigationBar

- (void)layoutSubviews{
    [super layoutSubviews];
    
    for (UIView *v in self.subviews) {
        if ([v isKindOfClass:[BackView class]]) {
            
            v.yan_x = 0;
            
        }
    }
}

@end
