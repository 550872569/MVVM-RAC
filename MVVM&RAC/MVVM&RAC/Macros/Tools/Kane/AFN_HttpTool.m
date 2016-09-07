//
//  AFN_HttpTool.m
//  旅行日记
//
//  Created by LuKane on 15/10/8.
//  Copyright (c) 2015年 KN. All rights reserved.
//

#import "AFN_HttpTool.h"
#import "AFNetworking.h"

#define timeouttnterval 10;

@interface AFN_HttpTool()

@end

@implementation AFN_HttpTool

- (instancetype)init{
    if(self = [super init]){
    }
    return self;
}

+ (void)post:(NSString *)url params:(id)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    // 1.创建一个请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    mgr.timeoutTnterval = timeouttnterval;
    
    // 2.发送一个POST请求
    [mgr POST:url parameters:params
      success:^(AFHTTPRequestOperation *operation, id responseObject) {
          if (success) {
              success(responseObject);
          }
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          if (failure) {
              failure(error);
          }
      }];
}

+ (void)get:(NSString *)url params:(id)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    // 1.创建一个请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    mgr.timeoutTnterval = timeouttnterval;
    
    // 2.发送一个GET请求
    [mgr GET:url parameters:params
     success:^(AFHTTPRequestOperation *operation, id responseObject) {
         if (success) {
             success(responseObject);
         }
     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         if (failure) {
             failure(error);
         }
     }];
}

//+ (void)post:(NSString *)url params:(id)params files:(NSArray *)files success:(void (^)(id))success failure:(void (^)(NSError *))failure{
//    // 1.创建一个请求管理者
//    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
//    mgr.timeoutTnterval = timeouttnterval;
//    
//    // 2.发送请求
//    [mgr POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
//        for (KNHttpFile *file in files) {
//            [formData appendPartWithFileData:file.data name:file.name fileName:file.filename mimeType:file.mimeType];
//        }
//    } success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
//        [MBProgressHUD showSuccess:@"发布成功"];
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        [MBProgressHUD showError:@"网络繁忙,请稍后再试"];
//    }];
//}

@end

@implementation KNHttpFile

//+ (instancetype)fileWithName:(NSString *)name data:(NSData *)data mimeType:(NSString *)mimeType filename:(NSString *)filename{
//    KNHttpFile *file = [[self alloc] init];
//    file.name = name;
//    file.data = data;
//    file.mimeType = mimeType;
//    file.filename = filename;
//    return file;
//}
@end