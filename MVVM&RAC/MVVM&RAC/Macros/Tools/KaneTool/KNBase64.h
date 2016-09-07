//
//  KNBase64.h
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/19.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNBase64 : NSObject

/**
 *  base64 解密
 *
 *  @param base64 传一个base64类型的字符串进去
 *
 *  @return 返回一个正常的字符串
 */
+ (NSString *)textFromBase64String:(NSString *)base64;

/**
 *  base64 加密
 *
 *  @param text 传入一个正常的字符串进去
 *
 *  @return 返回一个base64的字符串
 */
+ (NSString *)base64StringFromText:(NSString *)text;

@end
