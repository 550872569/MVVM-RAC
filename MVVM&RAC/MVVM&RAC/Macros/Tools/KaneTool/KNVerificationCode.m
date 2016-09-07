//
//  KNVerificationCode.m
//  XDFAHS-test
//
//  Created by LuKane on 16/2/15.
//  Copyright © 2016年 XDF. All rights reserved.
//

#import "KNVerificationCode.h"

#define RandomColor [UIColor colorWithRed:arc4random() % 256 / 256.0 green:arc4random() % 256 / 256.0 blue:arc4random() % 256 / 256.0 alpha:1.0];

#define LineCount 4
#define LineWidth 1.0
#define CharCount 4
#define FontSize [UIFont systemFontOfSize:arc4random()%5+15]

@interface KNVerificationCode(){
    UIColor *_fontColor;
}

@end

@implementation KNVerificationCode

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        _fontColor = [UIColor whiteColor];
        
        self.layer.cornerRadius = 3;
        self.layer.masksToBounds = YES;
        self.layer.borderColor = [UIColor whiteColor].CGColor;
        self.layer.borderWidth = 1;
        self.backgroundColor = [UIColor clearColor];
        [self setupVerification];
    }
    return self;
}

#pragma mark 重置验证码 - 获取验证码字符串
- (void)setupVerification{
    self.changeArr = [[NSArray alloc] initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"G",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    NSMutableString * getStr = [[NSMutableString alloc]initWithCapacity:CharCount];
    self.changeStr = [[NSMutableString alloc] initWithCapacity:CharCount];
    
    //从随机数组中选取需要个数的字符串
    for (int i = 0; i < CharCount; i++) {
        NSInteger index = arc4random()%([self.changeArr count]-1);
        getStr = [self.changeArr objectAtIndex:index];
        self.changeStr = (NSMutableString *)[self.changeStr stringByAppendingString:getStr];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self resetVerificationCode];
}

- (void)resetVerificationCode{
    [self setupVerification];
    [self setNeedsDisplay];
}

- (void)resetVerificationColorIsBlack:(BOOL)isBlack{
    if(isBlack == YES){
        self.layer.borderColor = [UIColor grayColor].CGColor;
        _fontColor = [UIColor blackColor];
    }else{
        self.layer.borderColor = [UIColor whiteColor].CGColor;
        _fontColor = [UIColor whiteColor];
    }
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    //获取要显示验证码字符串，根据长度，计算每个字符显示的大概位置
    NSString * text = [NSString stringWithFormat:@"%@",self.changeStr];
    CGSize cSize = [@"S" sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    int width = rect.size.width/text.length - cSize.width;
    int height = rect.size.height - cSize.height;
    CGPoint point;
    //依次绘制每一个字符，可以设置显示的每个字符的字体大小，颜色，样式
    float pX,pY;
    for (int i = 0; i < text.length; i++) {
        pX = arc4random()%width + rect.size.width /text.length * i;
        pY = arc4random()%height;
        point = CGPointMake(pX, pY);
        unichar c = [text characterAtIndex:i];
        NSString * textC = [NSString stringWithFormat:@"%C",c];
        [textC drawAtPoint:point withAttributes:@{NSFontAttributeName:FontSize,NSForegroundColorAttributeName:_fontColor}];
    }
    
    //调用drawRect：之前，系统会向栈中压入一个CGContextRef，调用UIGraphicsGetCurrentContext()会取栈顶的CGContextRef
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置划线宽度
    CGContextSetLineWidth(context, LineWidth);
    //绘制干扰的彩色直线
    for (int i = 0; i < LineCount; i++) {
        //设置线的随机颜色
        UIColor * color = [UIColor whiteColor];
        CGContextSetStrokeColorWithColor(context, [color CGColor]);
        //设置线的起点
        pX = arc4random()%(int)rect.size.width;
        pY = arc4random()%(int)rect.size.height;
        CGContextMoveToPoint(context, pX, pY);
        //设置线的终点
        pX = arc4random()%(int)rect.size.width;
        pY = arc4random()%(int)rect.size.height;
        CGContextMoveToPoint(context, pX, pY);
        //划线
        CGContextStrokePath(context);
    }
}


@end
