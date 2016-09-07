//
//  KNWaterflowLayout.h
//  02-瀑布流布局
//
//  Created by apple on 15/7/6.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KNWaterflowLayout;

@protocol KNWaterflowLayoutDelegate <NSObject>
- (CGFloat)waterflowLayout:(KNWaterflowLayout *)waterflowLayout heightForItemAtIndexPath:(NSIndexPath *)indexPath itemWidth:(CGFloat)itemWidth;

@optional
/**
 *  返回四边的间距, 默认是UIEdgeInsetsMake(10, 10, 10, 10)
 */
- (UIEdgeInsets)insetsInWaterflowLayout:(KNWaterflowLayout *)waterflowLayout;
/**
 *  返回最大的列数, 默认是3
 */
- (int)maxColumnsInWaterflowLayout:(KNWaterflowLayout *)waterflowLayout;
/**
 *  返回每行的间距, 默认是10
 */
- (CGFloat)rowMarginInWaterflowLayout:(KNWaterflowLayout *)waterflowLayout;
/**
 *  返回每列的间距, 默认是10
 */
- (CGFloat)columnMarginInWaterflowLayout:(KNWaterflowLayout *)waterflowLayout;
@end

@interface KNWaterflowLayout : UICollectionViewLayout
@property (nonatomic, weak) id<KNWaterflowLayoutDelegate> delegate;
@end
