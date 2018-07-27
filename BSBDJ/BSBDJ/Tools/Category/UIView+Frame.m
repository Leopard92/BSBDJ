//
//  UIView+Frame.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/27.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)yan_x{
    return self.frame.origin.x;
    
}

- (void)setYan_x:(CGFloat)yan_x{
    CGRect frame = self.frame;
    frame.origin.x = yan_x;
    self.frame = frame;
}

- (CGFloat)yan_y{
    return self.frame.origin.y;
}

- (void)setYan_y:(CGFloat)yan_y{
    CGRect frame = self.frame;
    frame.origin.y = yan_y;
    self.frame = frame;
}

- (CGFloat)yan_width{
    return self.frame.size.width;
}

- (void)setYan_width:(CGFloat)yan_width{
    CGRect frame = self.frame;
    frame.size.width = yan_width;
    self.frame = frame;
}

- (CGFloat)yan_height{
    return self.frame.size.height;
}

- (void)setYan_height:(CGFloat)yan_height{
    CGRect frame = self.frame;
    frame.size.height = yan_height;
    self.frame = frame;
}

@end
