//
//  KNResizeImage.h
//  XDFAHS-test
//
//  Created by LuKane on 16/1/12.
//  Copyright © 2016年 XDF. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    KNResizeImageStyleLeft,
    KNResizeImageStyleRight,
    KNResizeImageStyleTop,
    KNResizeImageStyleBottom
}KNResizeImageStyle;

@interface KNResizeImage : NSObject

+ (UIImage *)resizeableImageWithImage:(UIImage *)image resizeImageStyle:(KNResizeImageStyle)resizeImageStyle;

@end
