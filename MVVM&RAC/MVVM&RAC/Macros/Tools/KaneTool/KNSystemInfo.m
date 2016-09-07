//
//  KNSystemInfo.m
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/9.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import "KNSystemInfo.h"
#import <UIKit/UIKit.h>

@implementation KNSystemInfo

+ (NSString *)getDeviceName{
    return [[UIDevice currentDevice] name];
}

+ (NSString *)getDeviceUniqueIdentifider{
    return [NSString stringWithFormat:@"%@",[[UIDevice currentDevice] identifierForVendor]];
}

+ (NSString *)getDeviceSystemVersion{
    return [[UIDevice currentDevice] systemVersion];
}

+ (NSString *)getDeviceModel{
    return [[UIDevice currentDevice] model];
}

+ (NSString *)getDeviceSystemName{
    return [[UIDevice currentDevice] systemName];
}

+ (NSString *)getSystemTime{
    NSString *date;
    NSDateFormatter * formatter = [[NSDateFormatter alloc ] init];
    [formatter setDateFormat:@"YYYY-MM-dd hh-mm-ss"];
    date = [formatter stringFromDate:[NSDate date]];
    NSString *timeNow = [[NSString alloc] initWithFormat:@"%@", date];
    return timeNow;
}

+ (NSString *)getSystemDate{
    NSDate *date = [NSDate date];
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    NSDateComponents *component = [cal components:unitFlags fromDate:date];
    NSInteger year = [component year];
    NSInteger month = [component month];
    NSInteger day = [component day];
    return [NSString stringWithFormat:@"%zd-%zd-%zd",year,month,day];
}

+ (NSString *)getSystemStamp{
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval a = [dat timeIntervalSince1970];
    return [NSString stringWithFormat:@"%.0f", a];// 转为字符型
}

+ (NSString *)getNetWorkStatus{
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *children = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"]subviews];
    NSString *state = [[NSString alloc] init];
    int netType = 0;
    for (id child in children) {
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
            //获取到状态栏
            netType = [[child valueForKeyPath:@"dataNetworkType"] intValue];
            switch (netType) {
                case 0:
                    state = @"none";
                    break;
                case 1:
                    state = @"2G";
                    break;
                case 2:
                    state = @"3G";
                    break;
                case 3:
                    state = @"4G";
                    break;
                case 5:
                    state = @"WIFI";
                    break;
                default:
                    break;
            }
        }
    }
    
    //根据状态选择
    return state;
}

+ (double)getDeviceBatteryMonitor{
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;
    return [UIDevice currentDevice].batteryLevel;
}

@end
