//
//  KNNavigationController.m
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/9.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import "KNNavigationController.h"

@interface KNNavigationController ()

@end

@implementation KNNavigationController


+ (void)initialize{
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[KNNavigationController class], nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"naviBarImage.png"] forBarMetrics:UIBarMetricsDefault];
    [bar setTintColor:[UIColor colorWithRed:239/255.0 green:118/255.0 blue:159/255.0 alpha:1.0]];
    
    // 设置导航条的标题颜色
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    dictM[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dictM[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17];
    [bar setTitleTextAttributes:dictM];
    
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Helvetica-Bold" size:22.0]}];
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"naviBarImage.png"] forBarMetrics:UIBarMetricsDefault];
//    
//    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
//    self.view.backgroundColor = RGBA_COLOR(255, 255, 255, 1);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 左边按钮
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:0 target:self action:@selector(leftBtnWillPopback)];
}

#pragma mark - 正常情况下的返回按钮
- (void)leftBtnWillPopback{
    [self popViewControllerAnimated:YES];
}

@end
