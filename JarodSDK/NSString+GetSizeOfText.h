//
//  NSString+GetSizeOfText.h
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (GetSizeOfText)

/// 传入内容 和最大宽高 反馈一个宽高
/// @param text 内容
/// @param maxSize 最大宽高
/// @param font 字体大小
/// @param lineSpan 中间间隙
+ (CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize font:(UIFont *)font lineSpan:(NSInteger)lineSpan;

@end
