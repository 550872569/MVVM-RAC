//
//  KNMergeView.h
//  MergeImage
//
//  Created by LUKHA_Lu on 15/12/14.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    KNMergeViewTypeLeftTop,// 左上
    KNMergeViewTypeRightTop, // 右上
    KNMergeViewTypeLeftBottom,// 左下
    KNMergeViewTypeRightBottom, // 右下
    KNMergeViewTypeCenter // 中间
}KNMergeViewType;

@interface KNMergeView : UIImageView

/**
 *  单张图片合成
 *
 *  @param image        小图片
 *  @param locationType 小图片位置
 *  @param frame        背景imageView的frame
 *
 *  @return 返回背景imageView
 */
+ (UIImageView *)mergeImage:(UIImage *)image type:(KNMergeViewType)locationType frame:(CGRect)frame;

/**
 *  多张图片合成
 *
 *  @param imagesArr        多个 image
 *  @param locationTypeArr  多个位置,全部传enum类型
 *  @param frame            背景imageView的frame
 *
 *  @return 返回背景imageView
 */
+ (UIImageView *)mergeImages:(NSArray *)imagesArr typeArray:(NSArray *)locationTypeArr frame:(CGRect)frame;

@end
