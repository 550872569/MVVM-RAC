//
//  UIView+UINavigationController.m
//  fastDoctor
//
//  Created by Yan on 16/4/23.
//  Copyright © 2016年 GroupSeven. All rights reserved.
//

#import "UIView+UINavigationController.h"

@implementation UIView (UINavigationController)
- (UINavigationController *)navController {
    UIResponder *next = self.nextResponder;
    while (next != nil) {
        if ([next isKindOfClass:[UINavigationController class]]) {
            return (UINavigationController *)next;
        }
        next = next.nextResponder;
    }
    return nil;
}

- (UIViewController *)viewController {
    UIResponder *next = self.nextResponder;
    while (next != nil) {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = next.nextResponder;
    }
    return nil;
}

@end
