//
//  KNTextDynamicHeight.m
//  TextHeight
//
//  Created by LUKHA_Lu on 15/12/11.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "KNTextDynamicHeight.h"

@implementation KNTextDynamicHeight

+ (CGSize)sizeFromText:(NSString *)text textFont:(UIFont *)font maxWidth:(CGFloat)maxWidth{
    return [self sizeFromText:text textFont:font maxSize:CGSizeMake(maxWidth, MAXFLOAT)];
}

+ (CGSize)sizeFromText:(NSString *)text textFont:(UIFont *)font maxSize:(CGSize)maxSize{
    if(text == nil || text == NULL || [text isKindOfClass:[NSNull class]] || [[text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0){
        return CGSizeZero;
    }
    NSDictionary *attrs = @{NSFontAttributeName:font};
    return [text boundingRectWithSize:CGSizeMake(maxSize.width, maxSize.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
