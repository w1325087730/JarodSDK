//
//  UIButton+OnClick.m
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import "UIButton+OnClick.h"

static const void *clickKey = "clickKey";
static const char leftEngareKey;
static const char rightEngareKey;
static const char topEngareKey;
static const char downEngareKey;

@implementation UIButton (OnClick)


-(void)setEnlargeClickAreaWithTopEnlarge:(CGFloat)topEnlarge leftEnlarge:(CGFloat)leftEnlarge downEnlarge:(CGFloat)downEnlarge rightEnlarge:(CGFloat)rightEnlarge{
   
    objc_setAssociatedObject(self, &topEngareKey,[NSNumber numberWithFloat:topEnlarge], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftEngareKey,[NSNumber numberWithFloat:leftEnlarge], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &downEngareKey,[NSNumber numberWithFloat:downEnlarge], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightEngareKey,[NSNumber numberWithFloat:rightEnlarge], OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

-(void)myPositionX:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h{
    
    
    self.frame = CGRectMake(x, y, w, h);
    
}



-(UIView * )hitTest:(CGPoint)point withEvent:(UIEvent *)event{
     CGRect rect = [self enlargeFrame];
    if (CGRectEqualToRect(rect, self.bounds)) {
         return [super hitTest:point withEvent:event];
    }else{
        
        return CGRectContainsPoint(rect, point)?self:nil;
    }
    
    
}


-(CGRect)enlargeFrame{
    
    
    NSNumber* topEdge = objc_getAssociatedObject(self, &topEngareKey);
    NSNumber* rightEdge = objc_getAssociatedObject(self, &rightEngareKey);
    NSNumber* bottomEdge = objc_getAssociatedObject(self, &downEngareKey);
    NSNumber* leftEdge = objc_getAssociatedObject(self, &leftEngareKey);
    if (topEdge && rightEdge && bottomEdge && leftEdge)
    {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    }
    else
    {
        return self.bounds;
    }
    
    
}


//设置方法
-(void)setOnClick:(ButtonClickBlock)onClick{
    
    objc_setAssociatedObject(self, clickKey, onClick, OBJC_ASSOCIATION_COPY_NONATOMIC);
        if (onClick) {
        
        [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }else{
         [self removeTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}





-(ButtonClickBlock)onClick{
    
    return objc_getAssociatedObject(self, clickKey);
}

-(void)buttonClick:(UIButton * )sender{
    
    if (self.onClick) {
        
        self.onClick(sender);
    }
}


@end
