//
//  NSFileOperation.m
//  EaseMobUITest
//
//  Created by LUKHA_Lu on 15/10/20.
//  Copyright (c) 2015年 BFHD. All rights reserved.
//

#import "NSFileOperation.h"

@implementation NSFileOperation

+ (BOOL)removeFileWithFilePath:(NSString *)path status:(void (^)(BOOL))status{
    
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    if(status){
        status([fileMgr isExecutableFileAtPath:path]);
    }
    BOOL res = [fileMgr removeItemAtPath:path error:nil];
    return res;
}

+ (id)readFileWithFileName:(NSString *)fileName{
    return [NSData dataWithContentsOfFile:[self returnFilePathWithFileName:fileName]];
}

+ (BOOL)writeFileWithFileName:(NSString *)fileName withContent:(NSString *)content{
    NSString *documentDir = [self returnFilePathWithFileName:fileName];
    BOOL res = [content writeToFile:documentDir atomically:YES encoding:NSUTF8StringEncoding error:nil];
    return res;
}

+ (NSString *)returnFilePathWithFileName:(NSString *)fileName{
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *documentPath = [documentsDirectory stringByAppendingPathComponent:fileName];
    return documentPath;
}


@end
