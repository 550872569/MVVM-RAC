//
//  UIColor+Tools.m
//  绘制图表
//
//  Created by 小果 on 14-9-9.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "UIColor+Tools.h"

@implementation UIColor (Tools)

// 生成随机颜色
+(UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [self colorWithRed:r green:g blue:b alpha:1.0];
}



@end
