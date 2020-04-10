//
//  UIButton+OnClick.h
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef void(^ButtonClickBlock)(UIButton * );

@interface UIButton (OnClick)

@property(nonatomic,copy)ButtonClickBlock onClick;

-(void)myPositionX:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h;

-(void)setEnlargeClickAreaWithTopEnlarge:(CGFloat)topEnlarge leftEnlarge:(CGFloat)leftEnlarge downEnlarge:(CGFloat)downEnlarge rightEnlarge:(CGFloat)rightEnlarge;


@end
