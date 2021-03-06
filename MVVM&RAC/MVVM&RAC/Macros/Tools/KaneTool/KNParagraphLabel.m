//
//  KNParagraphLabel.m
//  YZReputation
//
//  Created by LUKHA_Lu on 15/11/18.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "KNParagraphLabel.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation KNParagraphLabel

+ (UILabel *)formatLabelWithFont:(UIFont *)font string:(NSString *)string textColor:(UIColor *)color{
    UILabel *formatLabel = [[UILabel alloc] init];
    [formatLabel setBackgroundColor:[UIColor clearColor]];
    [formatLabel setFont:font];
    [formatLabel setTextColor:color];
    [formatLabel setText:string];
    [formatLabel sizeToFit];
    return formatLabel;
}

+ (UILabel *)formatLabelWithFont:(UIFont *)font attriString:(NSString *)attrString lineSpace:(CGFloat)lineSpace textColor:(UIColor *)color{
    
    // 空距离
    CGFloat space = 10;
    UILabel *formatLabel = [[UILabel alloc] init];
    
    formatLabel.numberOfLines = 0;
    [formatLabel setFont:font];
    [formatLabel setBackgroundColor:[UIColor clearColor]];
    [formatLabel setTextColor:color];
    
    if(attrString == nil || attrString == NULL || [attrString isKindOfClass:[NSNull class]] || [[attrString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]==0){
        return formatLabel;
    }
    
    // 文字的宽度范围
    CGFloat textWidth = ScreenWidth - 2 * space;
    
    // 属性文字
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:attrString];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    
    // 设置行间距
    [style setLineSpacing:lineSpace];
    
    NSInteger leng = textWidth;
    
    if(attrString.length < textWidth){
        leng = attrString.length;
    }
    
    [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
    
    formatLabel.attributedText = attStr;
    
    return formatLabel;
}

@end
