//
//  UIBarButtonItem+Item.h
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/12.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(nullable id)target action:(SEL)action;

+ (instancetype)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(nullable id)target action:(SEL)action;

@end
