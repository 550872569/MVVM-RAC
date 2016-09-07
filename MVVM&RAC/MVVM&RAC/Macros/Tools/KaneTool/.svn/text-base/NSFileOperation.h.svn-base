//
//  NSFileOperation.h
//  EaseMobUITest
//
//  Created by LUKHA_Lu on 15/10/20.
//  Copyright (c) 2015年 BFHD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileOperation : NSObject

/**
 *  根据文件名去删除文件
 *
 *  @param path   文件路径
 *  @param status 返回是否有这个文件
 *
 *  @return 是否删除成功
 */
+ (BOOL)removeFileWithFilePath:(NSString *)path status:(void (^)(BOOL status))status;

/**
 *  根据文件名去查看文件(NSDocumentDirectory)
 *
 *  @param path 文件名
 *
 *  @return 文件NSData
 */
+ (id)readFileWithFileName:(NSString *)fileName;

/**
 *  根据文件名去写入
 *
 *  @param fileName 文件名
 *
 *  @param content 需要写入的内容
 *
 *  @return 是否写入成功
 */
+ (BOOL)writeFileWithFileName:(NSString *)fileName withContent:(NSString *)content;

@end
