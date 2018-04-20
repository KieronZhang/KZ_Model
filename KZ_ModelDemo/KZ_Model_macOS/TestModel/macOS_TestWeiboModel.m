//
//  TestWeiboModel.m
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "macOS_TestWeiboModel.h"

@implementation macOS_TestWeiboModel

+ (NSDictionary *)JSONDictionary {
    return @{@"id" : @"test_id"};
}

+ (NSDictionary *)dateFormatDictionary {
    //Wed Sep 16 12:20:09 +0800 2015
    return @{@"created_at" : @"EEE MMM d HH:mm:ss Z yyyy"};
}

- (void)setPic_infos:(NSDictionary *)pic_infos {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    for (NSString *key in pic_infos.allKeys) {
        NSDictionary *value = pic_infos[key];
        macOS_TestWeiboImageInfoModel *imageInfoModel = [[macOS_TestWeiboImageInfoModel alloc] initWithJSON:value];
        dict[key] = imageInfoModel;
    }
    _pic_infos = [NSMutableDictionary dictionaryWithDictionary:dict];
}

@end
