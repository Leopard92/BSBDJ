//
//  UIImage+Render.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

+ (UIImage *)imageNamedWithOriginal:(NSString *)name{
    
    UIImage * selImage = [UIImage imageNamed:name];
    selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return selImage;
}

@end
