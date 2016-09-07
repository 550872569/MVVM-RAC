//
//  KNProgressView.m
//  KNProgressView
//
//  Created by LUKHA_Lu on 15/11/19.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "KNProgressView.h"

@interface KNProgressView()

@property (nonatomic, strong) CADisplayLink *link; // 定时器 , 默认 1秒 调用60次
@property (nonatomic, weak) UIView *sliderView; // 进度 内容
@property (nonatomic, assign) CGFloat currentProgress; // 当前进度
@property (nonatomic, assign) CGFloat locationDistance; // 位置距离

@end

@implementation KNProgressView

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self initializeCustom]; // 设置默认值
    }
    return self;
}

- (void)initializeCustom{
    _BackGroundColor = [UIColor grayColor];
    _CurrentColor = [UIColor greenColor];
    _BordColor = [UIColor blackColor];
    _FrameInterval = 0.5;
    _locationDistance = 0;
    [self setupSliderView];
}

+ (instancetype)progressViewWithFrame:(CGRect)frame{
    KNProgressView *progressView = [[self alloc] initWithFrame:frame];
    progressView.clipsToBounds = YES;
    return progressView;
}

// 设置 进度控件
- (void)setupSliderView{
    UIView *sliderView = [[UIView alloc] initWithFrame:CGRectMake(-self.frame.size.width, 0, self.frame.size.width, self.frame.size.height)];
    sliderView.backgroundColor = _CurrentColor;
    _sliderView = sliderView;
    [self addSubview:sliderView];
}

-  (void)setBackGroundColor:(UIColor *)BackGroundColor{
    _BackGroundColor = BackGroundColor;
    self.backgroundColor = BackGroundColor;
}

- (void)setPercent:(CGFloat)percent{
    _percent = percent;
    _locationDistance = percent * self.frame.size.width; // 设置 目的位置
}

- (void)setCurrentColor:(UIColor *)CurrentColor{
    _CurrentColor = CurrentColor;
    _sliderView.backgroundColor = CurrentColor;
}

- (void)setBordColor:(UIColor *)BordColor{
    _BordColor = BordColor;
    self.layer.borderColor = BordColor.CGColor;
}

- (void)setFrameInterval:(NSInteger)FrameInterval{
    _FrameInterval = FrameInterval;
    _link.frameInterval = FrameInterval;
    if(_link){
        [self stopCADisplayLink];
    }
}

- (void)stopCADisplayLink{
    [_link  invalidate];
    _link = nil;
}

- (void)startCADisplayLink{
    if(_link) return;
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateProgress)];
    [link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    link.frameInterval = _FrameInterval;
    _link = link;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [self stopCADisplayLink];
}

- (void)updateProgress{
    _currentProgress += 0.010000;
    if(_currentProgress > _percent){
        [_link invalidate];
        _link = nil;
        return;
    }
    CGFloat moveWidth = _currentProgress * self.frame.size.width;
    _sliderView.frame = CGRectMake(moveWidth - self.frame.size.width + 2, 0, _sliderView.frame.size.width, _sliderView.frame.size.height);
}

@end
