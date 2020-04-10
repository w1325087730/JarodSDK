//
//  NSString+json.m
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import "NSString+json.h"

@implementation NSString (json)
//字符串转字典
+(NSDictionary *)parseJSONStringToNSDictionary:(NSString *)JSONString {
    
    NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableLeaves error:nil];
    return responseJSON;
}

//字典转字符串
+ (NSString*)dictionaryToJson:(NSDictionary *)dic

{
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString;
    if (!jsonData) {
        NSLog(@"转换失败----====%@",error);
    }else{
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
    
}

@end
