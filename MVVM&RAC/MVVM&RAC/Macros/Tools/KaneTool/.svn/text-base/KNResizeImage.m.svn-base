//
//  KNResizeImage.m
//  XDFAHS-test
//
//  Created by LuKane on 16/1/12.
//  Copyright © 2016年 XDF. All rights reserved.
//

#import "KNResizeImage.h"

@implementation KNResizeImage

+ (UIImage *)resizeableImageWithImage:(UIImage *)image resizeImageStyle:(KNResizeImageStyle)resizeImageStyle{
    CGFloat w = image.size.width * 0.5;
    CGFloat h = image.size.height * 0.5;
    
    if(resizeImageStyle == KNResizeImageStyleLeft){
        return [image resizableImageWithCapInsets:UIEdgeInsetsMake(w,w * 2 * 0.1,w,w * 2 * 0.9)];
    }
    
    if(resizeImageStyle == KNResizeImageStyleTop){
        return [image resizableImageWithCapInsets:UIEdgeInsetsMake(h * 0.9 * 2,w,h * 2 * 0.1,w)];
    }
    
    if(resizeImageStyle == KNResizeImageStyleBottom){
        
        return [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0,h * 2 * 0.5,0)];
    }
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(w,w * 2 * 0.9,w,w * 2 * 0.1)];
}

@end
