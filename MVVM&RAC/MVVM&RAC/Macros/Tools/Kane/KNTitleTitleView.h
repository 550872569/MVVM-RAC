//
//  KNTitleTitleView.h
//  Test
//
//  Created by LUKHA_Lu on 15/12/11.
//  Copyright © 2015年 KNKane. All rights reserved.
//  一个按钮上面有 两个 label, 上下各一个

#import <UIKit/UIKit.h>

@interface KNTitleTitleView : UIImageView

/* 数字的文字 描述的文字 */

@property (nonatomic,copy) NSString *numberString;
@property (nonatomic,copy) NSString *describString;

/* 数字的颜色 描述的颜色 */
@property (nonatomic, strong) UIColor *numberColor;
@property (nonatomic, strong) UIColor *describColor;

/* 文字的字体 */
@property (nonatomic, strong) UIFont *stringFont;

@end
