//
//  TestWeiboImageInfoModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_Model_macOS/KZ_Model.h>
#import "macOS_TestWeiboImageModel.h"

@interface macOS_TestWeiboImageInfoModel : KZ_Model

@property (nonatomic, strong) macOS_TestWeiboImageModel *thumbnail;
@property (nonatomic, strong) macOS_TestWeiboImageModel *bmiddle;
@property (nonatomic, strong) macOS_TestWeiboImageModel *large;
@property (nonatomic, strong) macOS_TestWeiboImageModel *largest;
@property (nonatomic, strong) NSString *pic_id;
@property (nonatomic, assign) int photo_tag;
@property (nonatomic, strong) macOS_TestWeiboImageModel *original;
@property (nonatomic, strong) NSString *filter_id;
@property (nonatomic, strong) NSString *object_id;
@property (nonatomic, strong) macOS_TestWeiboImageModel *middleplus;

@end
