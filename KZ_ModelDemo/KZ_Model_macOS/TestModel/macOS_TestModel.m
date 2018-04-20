//
//  TestModel.m
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "macOS_TestModel.h"

@implementation macOS_TestModel

+ (NSDictionary *)JSONDictionary {
    return @{@"id" : @"test_id"};
}

+ (NSArray *)modelWhiteList {
    return @[@"test_id"];
}

@end
