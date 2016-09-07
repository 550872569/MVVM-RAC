//
//  NSDictionary+ObjectByKey.m
//  Object-test
//
//  Created by LUKHA_Lu on 15/12/11.
//  Copyright © 2015年 KNKane. All rights reserved.
//

#import "ObjectByKey.h"

@implementation NSDictionary (ObjectByKey)

- (BOOL)isNULL:(id)obj{
    if(!obj) return YES;
    if([obj isKindOfClass:[NSNull class]]) return YES;
    if([obj isKindOfClass:[NSString class]] && ([obj isEqualToString:@"<null>"] || [obj isEqualToString:@"NULL"])) return YES;
    return NO;
}

- (id)ObjectByKey_Id:(id)key{
    id value = [self ObjectByKey_Id:key];
    if([self isNULL:value]) return nil;
    else return value;
}

- (NSInteger)ObjectByKey_NSInteger:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return 0;
    else return [value integerValue];
}

- (CGFloat)ObjectByKey_CGFloat:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return 0.0f;
    else return [value floatValue];
}

- (double)ObjectByKey_Double:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return 0.0f;
    else return [value doubleValue];
}

- (BOOL)ObjectByKey_Bool:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return 0.0f;
    else return [value boolValue];
}

- (NSString *)ObjectByKey_NSString:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return nil;
    else return [NSString stringWithFormat:@"%@",value];
}

- (NSDictionary *)ObjectByKey_NSDictionary:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return nil;
    else return value;
}

- (NSArray *)ObjectByKey_NSArray:(id)key{
    id value = [self objectForKey:key];
    if([self isNULL:value]) return nil;
    else return value;
}

@end
