//
//  KNParagraphLabel.h
//  YZReputation
//
//  Created by LUKHA_Lu on 15/11/18.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KNParagraphLabel : NSObject

/**
 *  自动生成一个普通label
 *
 *  @param font   字体
 *  @param string 普通文字
 *  @param color  颜色
 *
 *  @return 返回一个label
 */
+ (UILabel *)formatLabelWithFont:(UIFont *)font string:(NSString *)string textColor:(UIColor *)color;

/**
 *  自动生成 带行间距的label <需要设置以下>
 *  CGSize size = CGSizeMake(ScreenWidth - 20 , 50000);
 *  CGSize labelSize = [titleLabel sizeThatFits:size];
 *  titleLabel.frame = CGRectMake(10, 10, labelSize.width, labelSize.height);
 *  @param font       字体
 *  @param attrString 普通文字
 *  @param lineSpace  行间距
 *  @param color      颜色
 *
 *  @return 返回一个label
 */
+ (UILabel *)formatLabelWithFont:(UIFont *)font attriString:(NSString *)attrString lineSpace:(CGFloat)lineSpace textColor:(UIColor *)color;

@end
