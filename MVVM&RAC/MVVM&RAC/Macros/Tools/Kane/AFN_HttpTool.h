//
//  AFN_HttpTool.h
//  旅行日记
//
//  Created by LuKane on 15/10/8.
//  Copyright (c) 2015年 KN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFN_HttpTool : NSObject

/**
 *  post请求
 *
 *  @param url     请求URL
 *  @param params  普通的请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)post:(NSString *)url params:(id)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
/**
 *  get请求
 *
 *  @param url     请求URL
 *  @param params  普通的请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)get:(NSString *)url params:(id)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

/***************************华丽的分割线************************/
/**
 *  文件上传
 *
 *  @param url     请求URL
 *  @param params  普通的请求参数
 *  @param files   文件参数(里面都是KNHttpFile模型)
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
//+ (void)post:(NSString *)url params:(id)params files:(NSArray *)files success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end

@interface KNHttpFile : NSObject

/** 文件参数名 */
@property (nonatomic, copy) NSString *name;
/** 文件数据 */
@property (nonatomic, strong) NSData *data;
/** 文件类型 */
@property (nonatomic, copy) NSString *mimeType;
/** 文件名 */
@property (nonatomic, copy) NSString *filename;

/**
 *  NSData *data = UIImageJPEGRepresentation(imagesArr(中的最后一个image), 0.5);
 *  传入一个NSData类型的图片,将return file 放到上面的方法中,用数组装起来.
 *  @param name     上传过去的名字 例如: imgFile
 *  @param data     data
 *  @param mimeType imgFile/png
 *  @param filename imgFile.png
 *
 *  @return 返回一个file
 */
//+ (instancetype)fileWithName:(NSString *)name data:(NSData *)data mimeType:(NSString *)mimeType filename:(NSString *)filename;


@end
