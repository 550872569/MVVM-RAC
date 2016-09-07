//
//  KNTitleTitleView.m
//  Test
//
//  Created by LUKHA_Lu on 15/12/11.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "KNTitleTitleView.h"

@interface KNTitleTitleView()

@property (nonatomic, strong) UILabel *numberLabel;
@property (nonatomic, strong) UILabel *describLabel;

@end

@implementation KNTitleTitleView

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self setUp];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        [self setUp];
    }
    return self;
}

- (void)setUp{
    _numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height * 0.5)];
    _numberLabel.textAlignment = NSTextAlignmentCenter;
    _numberLabel.textColor = [UIColor blackColor];
    
    _describLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_numberLabel.frame), self.frame.size.width, self.frame.size.height * 0.5)];
    _describLabel.textAlignment = NSTextAlignmentCenter;
    _describLabel.textColor = [UIColor blackColor];
    [self addSubview:_numberLabel];
    [self addSubview:_describLabel];
}

- (void)setNumberColor:(UIColor *)numberColor{
    _numberColor = numberColor;
    _numberLabel.textColor = numberColor;
}

- (void)setDescribColor:(UIColor *)describColor{
    _describColor = describColor;
    _describLabel.textColor = describColor;
}

- (void)setNumberString:(NSString *)numberString{
    _numberString = numberString;
    _numberLabel.text = numberString;
}

- (void)setDescribString:(NSString *)describString{
    _describString = describString;
    _describLabel.text = describString;
}

- (void)setStringFont:(UIFont *)stringFont{
    _numberLabel.font = stringFont;
    _describLabel.font = stringFont;
}


@end
