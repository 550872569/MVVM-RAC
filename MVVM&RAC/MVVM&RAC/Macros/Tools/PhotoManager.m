//
//  PhotoManager.m
//  VillageSpirits
//
//  Created by 胡长俊 on 16/2/16.
//  Copyright © 2016年 HCJ. All rights reserved.
//

#import "PhotoManager.h"

@implementation PhotoManager
+ (instancetype)photoManager
{
    
    static PhotoManager *photoManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        photoManager = [[self alloc] init];
    });
    
    return photoManager;
}

- (BOOL)canVisitAlbum
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]){
        
        return YES;
    }
    return NO;
}
/** 允许打开相机 */
- (BOOL)canOpenCamera
{
/**  UIImagePickerController静态方法判断设备是否支持照相机功能 */
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        
        return YES;
    }
    return NO;
}
/**  UIImagePickerController静态方法判断设备是否支持／图片库／相册功能 */
- (BOOL)canSaveToAlbum
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]){
        
        return YES;
    }
    return NO;
}
- (void)showAlertControllerInController:(UIViewController *)controller withTitle:(NSString *)title cameraAction:(void (^)())cameraAction albumAction:(void (^)())albumAction
{
    
    UIAlertController *alert = [[UIAlertController alloc] init];
    if (title.length) {
        alert.title = title;
    }
    
    UIAlertAction *camera = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        if (cameraAction) {
            cameraAction();
        }
    }];
    UIAlertAction *album = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (albumAction) {
            albumAction();
        }
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:camera];
    [alert addAction:album];
    [alert addAction:cancel];
    [controller presentViewController:alert animated:YES completion:nil];
}

@end
