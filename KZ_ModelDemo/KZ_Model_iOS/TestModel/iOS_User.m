//
//  User.m
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "iOS_User.h"

@implementation iOS_User

+ (NSDictionary *)JSONDictionary {
    return @{@"name" : @"username"};
}

+ (Class)classToProperty:(NSString *)propertyName {
    if ([propertyName isEqualToString:@"cousins"]) {
        return [iOS_User class];
    }
    return nil;
}

//+ (NSArray *)modelBlackList {
//    return @[@"father"];
//}
//
//+ (NSArray *)modelWhiteList {
//    return @[@"age"];
//}

@end
