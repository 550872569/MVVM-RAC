//
//  KNProgressView.h
//  KNProgressView
//
//  Created by LUKHA_Lu on 15/11/19.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KNProgressView : UIView

/**
 *  初始化一个 进度条
 *
 *  @param frame 进度条总共的大小
 *
 *  @return 返回一个进度条控件
 */
+ (instancetype)progressViewWithFrame:(CGRect)frame;

/* 开启定时器 */
- (void)startCADisplayLink;

/* 关闭定时器 */
- (void)stopCADisplayLink;

/* 背景颜色 */
@property (nonatomic, strong) UIColor *BackGroundColor;

/* 进度颜色 */
@property (nonatomic, strong) UIColor *CurrentColor;

/* 边框颜色 */
@property (nonatomic, strong) UIColor *BordColor;

/* 消耗时间*/
@property (nonatomic, assign) NSInteger FrameInterval;

/* 进度条 百分比*/
@property (nonatomic, assign) CGFloat percent;


@end
