//
//  YHPImageLoopModel.h
//  fastDoctor
//
//  Created by Yan on 16/4/24.
//  Copyright © 2016年 GroupSeven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPImageLoopModel : NSObject
/** 字典转模型 */
+(instancetype)modelWithDict:(NSDictionary *)dict;
/** 异步获取网络数据 */
+(void)loopLineListWithSucess:(void(^)(NSArray *array))sucessBlock error:(void(^)())errorBlock;
@end
