//
//  UIView+Extension.h
//  01彩票项目
//
//  Created by Apple on 16/1/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

//
/**
 *  分类能做什么事情
 *
 *  扩充方法
 *
 *  可以添加属性
 不在分类中使用@property 会做哪三件事?
    1.创建一个下划线的成员变量
    2.set方法
    3.get方法
 */
#import <UIKit/UIKit.h>

@interface UIView (Extension)

/**
 *  在分类中使用@property 不会做上面的三件事
 *
 */
//有一个x 属性
@property (nonatomic , assign)CGFloat x;

@property (nonatomic , assign)CGFloat y;


@property (nonatomic , assign)CGFloat w;


@property (nonatomic , assign)CGFloat h;


@end
