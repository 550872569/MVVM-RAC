//
//  PhotoManager.h
//  VillageSpirits
//
//  Created by 胡长俊 on 16/2/16.
//  Copyright © 2016年 HCJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhotoManager : NSObject
+ (instancetype)photoManager;

/**
 *  判断是不是有相册的授权
 */
- (BOOL)canVisitAlbum;
/**
 *  判断是不是有打开相机的权限
 */
- (BOOL)canOpenCamera;
/**
 *  判断是不是有保存图片到相册的权限
 */
- (BOOL)canSaveToAlbum;

/**
 *  在某个controller弹出选择框，本方法只适合ios以上的
 */
- (void)showAlertControllerInController:(UIViewController *)controller withTitle:(NSString *)title cameraAction:(void(^)())cameraAction albumAction:(void(^)())albumAction;

@end
