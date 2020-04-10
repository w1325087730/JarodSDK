//
//  NSString+json.h
//  WJHContentSDK
//
//  Created by JiangHua Wang on 2020/4/8.
//  Copyright © 2020 KuaQu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (json)

+(NSDictionary *)parseJSONStringToNSDictionary:(NSString *)JSONString;

+(NSString *)dictionaryToJson:(NSDictionary *)dic;

@end
