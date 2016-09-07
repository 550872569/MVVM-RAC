//
//  YHPImageLoopModel.m
//  fastDoctor
//
//  Created by Yan on 16/4/24.
//  Copyright © 2016年 GroupSeven. All rights reserved.
/*
 首页轮播图接口
 请求地址: http://iosapi.itcast.cn/doctor/banners.json.php
 请求参数:{"page_size":10,"page":1}
 //    NSString * url = @"http://iosapi.itcast.cn/doctor/banners.json.php";
 "banner_id" = 8;
 "banner_img_url" = "http://hdkj-image1.chinacloudapp.cn/carelink/user/2015/12/4316336854579796.jpg";
 "banner_link" = "http://hdkj-web2.chinacloudapp.cn:8080/web/doctor_3.html";
 "banner_title" = "\U70ed\U95e8\U533b\U751f";

 */

#import "YHPImageLoopModel.h"
#import "XZCSessionManager.h"
#import "YHPNetWorkTools.h"

@interface YHPImageLoopModel ()
/** id */
@property (nonatomic, strong) NSNumber *banner_id;
/** 图片img */
@property (nonatomic, copy) NSString *banner_img_url;
/** link */
@property (nonatomic, copy) NSString *banner_link;
/** 文字 */
@property (nonatomic, copy) NSString *banner_title;

@end

@implementation YHPImageLoopModel
/** 字典转模型 */
+(instancetype)modelWithDict:(NSDictionary *)dict {
    YHPImageLoopModel *model = [YHPImageLoopModel new];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}
/** 重写描述方法 */
-(NSString *)description{
    return [NSString stringWithFormat:@"%@ {banner_id = %@,banner_title = %@,banner_link = %@,,banner_img_url = %@}",[super description],self.banner_id,self.banner_title,self.banner_link,self.banner_img_url];
}
/** 过滤方法 */
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
/** 异步获取网络数据 */
+(void)loopLineListWithSucess:(void (^)(NSArray *))sucessBlock error:(void (^)())errorBlock {
    NSString * url = @"banners.json.php";
    NSDictionary * parameters =  @{@"page_size":@10,@"page":@1};
    [[YHPNetWorkTools shared]POST:url parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"responeobj---------***---------%@",responseObject);
        /** 获取到数据 进行字典转模型存入数组 */
//        id array = responseObject[@"banners"];
//        NSLog(@"a------------------%@",array);
        
//        NSLog(@"r------------------%@",[responseObject class]);
//        NSMutableArray * mArray = [NSMutableArray array];
//        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            YHPImageLoopModel * model = [YHPImageLoopModel modelWithDict:obj];
//            [mArray addObject:model];
//            NSLog(@"model------------------%@",model);
//        }];
        if (sucessBlock) {
//            sucessBlock(mArray.copy);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error------------------%@",error);
        if (errorBlock) {
            errorBlock();
        }
    }];
}

@end
