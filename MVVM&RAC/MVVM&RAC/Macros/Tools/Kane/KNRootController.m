//
//  KNRootController.m
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/9.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import "KNRootController.h"

@interface KNRootController ()

@end

@implementation KNRootController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupNav{
    // 左边按钮
    self.navigationController.navigationBar.barTintColor = [UIColor lightGrayColor];
    self.navigationController.navigationBar.tintColor = [UIColor lightGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor lightGrayColor]}];
    self.navigationController.navigationBar.translucent = NO;
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];
}

@end
