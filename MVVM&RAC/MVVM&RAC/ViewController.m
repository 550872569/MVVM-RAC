//
//  ViewController.m
//  MVVM&RAC
//
//  Created by YY on 16/8/30.
//  Copyright © 2016年 Yan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = COLOR_WHITE;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"self:%@",self);
}

@end
