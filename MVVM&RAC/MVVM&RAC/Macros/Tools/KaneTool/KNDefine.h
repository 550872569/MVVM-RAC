//
//  KNDefine.h
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/9.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFN_HttpTool.h"
#import "KNAlertView.h"
#import "KNBase64.h"
#import "KNNavigationController.h"
#import "KNNoSelectButton.h"
#import "KNParagraphLabel.h"
#import "KNProgressView.h"
#import "KNRootController.h"
#import "KNShareTextView.h"
#import "KNSystemInfo.h"
#import "UIBarButtonItem+Extension.h"
#import "UIColor+KNColor.h"
#import "UIView+Extension.h"
#import "KNImageTitleView.h"
#import "KNJudgementTool.h"
#import "KNMergeView.h"
#import "KNSystemInfo.h"
#import "KNTextDynamicHeight.h"
#import "KNTitleTitleView.h"
#import "KNTitleBtn.h"
#import "KNWaterflowLayout.h"
#import "NSDate+Extension.h"
#import "NSFileOperation.h"
#import "ObjectByKey.h"
#import "KNResizeImage.h"

#import "MBProgressHUD+KN.h"
#import "MBProgressHUD.h"
#import "UIViewController+HUD.h"

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>
#import <ImageIO/ImageIO.h>

//#import "NSString+Hash.h"

//#import "SVProgressHUD.h"

#import "XDFAccountTool.h"

#import "UIImageView+WebCache.h"
//#import "MJRefresh.h"

// 推出  有动画 / 没有动画
#define pushToControllerWithAnimated(name) [self.navigationController pushViewController:name animated:YES];
#define pushToControllerWithoutAnimated(name) [self.navigationController pushViewController:name animated:NO];

// 返回  有动画 / 没有动画
#define popBackWithAnimated [self.navigationController popViewControllerAnimated:YES];
#define popBackWithoutAnimated [self.navigationController popViewControllerAnimated:NO];

// 返回到指定的控制器  有动画 / 没有动画
#define popToDestinationVcWithAnimated(name) [self.navigationController popToViewController:name animated:YES];
#define popToDestinationVcWithoutAnimated(name) [self.navigationController popToViewController:name animated:NO];

// 判断是哪个机型
#define iPhone6P (ScreenWidth == 414)
#define iPhone6 (ScreenWidth == 375)
#define iPhone5 (ScreenHeight == 568)
#define iPhone4 (ScreenHeight == 480)

#define iPhone6W 1
#define iPhone6H 1



// 通过色值去设置颜色 例如: KNColorFromRGB(0xf9f9f9)
#define KNColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// 屏幕宽和高
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface KNDefine : NSObject

@end
