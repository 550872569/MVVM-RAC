//
//  YBAlertView.m
//  YBAlertView_Demo
//
//  Created by Jason on 16/1/12.
//  Copyright © 2016年 www.jizhan.com. All rights reserved.
//

#import "YBAlertView.h"

@interface YBAlertView ()

@property (nonatomic, strong) UIView *bgView;

@end

@implementation YBAlertView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 10;
        self.backgroundColor = [UIColor whiteColor];
        self.clipsToBounds = YES;
    }
    return self;
}

- (void)show
{
    if (self.bgView) return;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    self.bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH)];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.bgView addGestureRecognizer:tap];
    
    UITapGestureRecognizer *tapBG = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBG:)];
    [self.bgView addGestureRecognizer:tapBG];
    
    UITapGestureRecognizer *tapBGYB = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBGYB:)];
    [self addGestureRecognizer:tapBGYB];
    self.bgView.userInteractionEnabled = YES;
    self.bgView.backgroundColor = [UIColor blackColor];
    self.bgView.alpha = 0.2;
    [window addSubview:self.bgView];
    
    [window addSubview:self];
    
}

- (void)close
{
    [self removeFromSuperview];
    [self.bgView removeFromSuperview];
    self.bgView = nil;
    
}

- (void)tap:(UITapGestureRecognizer *)tap
{
    NSInteger *i = 0;
    for (id obj in self.subviews) {
        if ([obj isKindOfClass:[UIButton class]]) {
            i++;
        }
    }
    
    
    if (i == 0) {
        [self close];
    }else{
        [self endEditing:YES];
    }
    
   
}
-(void)tapBG:(UIGestureRecognizer *)tap{
    
    NSInteger *i = 0;
    for (id obj in self.subviews) {
        if ([obj isKindOfClass:[UIButton class]]) {
            i++;
        }
    }
    if (i == 0) {
        [self close];
    }

}
- (void)tapBGYB:(UITapGestureRecognizer *)tap{
    NSInteger *i = 0;
    for (id obj in self.subviews) {
        if ([obj isKindOfClass:[UILabel class]]) {
            i++;
        }
    }

    for (id obj in self.subviews) {
        if ([obj isKindOfClass:[UIView class]]) {
            i++;
        }
    }
    if (i != 0) {
        [self endEditing:YES];
    }
    
}
@end
