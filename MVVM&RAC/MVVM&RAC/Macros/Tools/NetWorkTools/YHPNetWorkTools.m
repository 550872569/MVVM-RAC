//
//  YHPNetWorkTools.m
//  fastDoctor
//
//  Created by Yan on 16/4/26.
//  Copyright © 2016年 GroupSeven. All rights reserved.
//

#import "YHPNetWorkTools.h"

@implementation YHPNetWorkTools

/** 单利方法创建网络请求Manager */
+(instancetype)shared {
    static YHPNetWorkTools * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration * config = [NSURLSessionConfiguration defaultSessionConfiguration];
        /** 设置URL基地址 */
        instance = [[YHPNetWorkTools alloc]initWithBaseURL:[NSURL URLWithString:@"http://iosapi.itcast.cn/doctor/"] sessionConfiguration:config];
        /** 请求超时时间 */
        config.timeoutIntervalForRequest = 15;
    });
    return instance;
}
@end
