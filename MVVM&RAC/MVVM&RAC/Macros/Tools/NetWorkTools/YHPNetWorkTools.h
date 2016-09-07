//
//  YHPNetWorkTools.h
//  fastDoctor
//
//  Created by Yan on 16/4/26.
//  Copyright © 2016年 GroupSeven. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface YHPNetWorkTools : AFHTTPSessionManager

/** 单利方法创建网络请求Manager */
+ (instancetype)shared;
@end
