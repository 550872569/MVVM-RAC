//
//  KNMergeView.m
//  MergeImage
//
//  Created by LUKHA_Lu on 15/12/14.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "KNMergeView.h"

@implementation KNMergeView

+ (UIImageView *)mergeImage:(UIImage *)image type:(KNMergeViewType)locationType frame:(CGRect)frame{
    // 背景imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.image = image;
    [imageView addSubview:imgView];
    NSInteger type = locationType;
    [self imgView:imgView type:type backGroundView:imageView];
    return imageView;
}
+ (UIImageView *)mergeImages:(NSArray *)imagesArr typeArray:(NSArray *)locationTypeArr frame:(CGRect)frame{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    if(imagesArr == nil || [imagesArr isKindOfClass:[NSNull class]] || imagesArr.count == 0 || locationTypeArr == nil || [locationTypeArr isKindOfClass:[NSNull class]] || locationTypeArr.count == 0 || imagesArr.count != locationTypeArr.count){
        return imageView;
    }
    for (NSInteger i = 0 ; i < imagesArr.count; i++) {
        UIImageView *imgView = [[UIImageView alloc] init];
        imgView.image = imagesArr[i];
        NSInteger type = [locationTypeArr[i] integerValue];
        [self imgView:imgView type:type backGroundView:imageView];
        [imageView addSubview:imgView];
    }
    return imageView;
}
+ (void)imgView:(UIImageView *)imgView type:(NSInteger)type backGroundView:(UIImageView *)imageView{
    UIImage *image = imgView.image;
    CGFloat imgViewWidth = image.size.width;
    CGFloat imgViewHeight = image.size.height;
    switch (type) {
        case KNMergeViewTypeCenter:
            imgView.frame = CGRectMake((imageView.frame.size.width - image.size.width) * 0.5, (imageView.frame.size.height - image.size.height) * 0.5, imgViewWidth, imgViewHeight);
            break;
        case KNMergeViewTypeLeftTop:
            imgView.frame = CGRectMake(0,0, imgViewWidth, imgViewHeight);
            break;
        case KNMergeViewTypeRightTop:
            imgView.frame = CGRectMake((imageView.frame.size.width - image.size.width), 0, imgViewWidth, imgViewHeight);
            break;
        case KNMergeViewTypeLeftBottom:
            imgView.frame = CGRectMake(0, (imageView.frame.size.height - image.size.height), imgViewWidth, imgViewHeight);
            break;
        case KNMergeViewTypeRightBottom:
            imgView.frame = CGRectMake((imageView.frame.size.width - image.size.width), (imageView.frame.size.height - image.size.height) , imgViewWidth, imgViewHeight);
            break;
        default:
            break;
    }
}

@end
