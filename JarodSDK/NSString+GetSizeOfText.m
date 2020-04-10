//
//  NSString+GetSizeOfText.m
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import "NSString+GetSizeOfText.h"

@implementation NSString (GetSizeOfText)

- (CGSize)sizeOfTextWithMaxSize:(CGSize)maxSize font:(UIFont *)font lineSpan:(NSInteger)lineSpan
{
    NSDictionary *atts = nil;
    if (lineSpan != 0) {
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        style.lineSpacing = lineSpan;
        atts = @{NSFontAttributeName : font, NSParagraphStyleAttributeName : style};
    }else{
        atts = @{NSFontAttributeName : font};
    }
    
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:atts context:nil].size;
}

+ (CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize font:(UIFont *)font lineSpan:(NSInteger)lineSpan
{
    return [text sizeOfTextWithMaxSize:maxSize font:font lineSpan:lineSpan];
}

@end
