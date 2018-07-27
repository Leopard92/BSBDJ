//
//  BackView.h
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/27.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BackView : UIView

+ (instancetype)backViewWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action title:(NSString *)title;

@end
