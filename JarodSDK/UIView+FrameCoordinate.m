//
//  UIView+FrameCoordinate.m
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import "UIView+FrameCoordinate.h"
#define WF_SCALE [ScaleSize GetAutoSizeX]
#define WF_PXFLOAT(px)   (CGFloat)px * 1.656/3 * (WF_SCALE)
@implementation UIView (FrameCoordinate)
-(void)setX:(CGFloat)x{
    CGRect frame  = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(CGFloat)x{
    return self.frame.origin.x;
}
- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

-(CGFloat)right{
    return CGRectGetMaxX(self.frame);
}
-(CGFloat)bottom{
    return CGRectGetMaxY(self.frame);
}
-(void)setFrame:(CGRect)frame{
    self.frame = frame;
}

@end
