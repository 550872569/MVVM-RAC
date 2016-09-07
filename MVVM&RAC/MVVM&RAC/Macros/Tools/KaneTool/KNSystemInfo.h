//
//  KNSystemInfo.h
//  NavTest
//
//  Created by LUKHA_Lu on 15/10/9.
//  Copyright (c) 2015年 KNKane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNSystemInfo : NSObject

/**
 *  获取到设备的名称:陆习康的iPhone,陆习康的iPad
 *
 *  @return 名称
 */
+ (NSString *)getDeviceName;

/**
 *  获取到设备的唯一标示
 *
 *  @return 标示的字符串
 */
+ (NSString *)getDeviceUniqueIdentifider;

/**
 *  获取到设备系统版本号
 *
 *  @return 版本号
 */
+ (NSString *)getDeviceSystemVersion;

/**
 *  获取到系统名称: iPhone OS
 *
 *  @return 系统名称
 */
+ (NSString *)getDeviceSystemName;

/**
 *  获取到手机的型号 : iPhone4, iPhone5,5S,6,6P,6s,6sP
 *
 *  @return 手机型号
 */
+ (NSString *)getDeviceModel;

/**
 *   获取到本地时间
 *
 *  @return 时间
 */
+ (NSString *)getSystemTime;

/**
 *   获取到系统日期
 *
 *  @return 返回系统日期
 */
+ (NSString *)getSystemDate;

/**
 *  获取到本地时间戳
 *
 *  @return 时间戳
 */
+ (NSString *)getSystemStamp;

/**
 *  获取到网络的类型 :2G ,3G,4G,wifi,none
 *
 *  @return 网络类型
 */
+ (NSString *)getNetWorkStatus;


/**
 *  获取到手机 电量
 *
 *  @return 返回一个 double类型的数据(此方法不精准)
 */
+ (double)getDeviceBatteryMonitor;

@end
