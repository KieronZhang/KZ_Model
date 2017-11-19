//
//  TestWeiboImageInfoModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_ModelFramework/KZ_Model.h>
#import "TestWeiboImageModel.h"

@interface TestWeiboImageInfoModel : KZ_Model

@property (nonatomic, strong) TestWeiboImageModel *thumbnail;
@property (nonatomic, strong) TestWeiboImageModel *bmiddle;
@property (nonatomic, strong) TestWeiboImageModel *large;
@property (nonatomic, strong) TestWeiboImageModel *largest;
@property (nonatomic, strong) NSString *pic_id;
@property (nonatomic, assign) int photo_tag;
@property (nonatomic, strong) TestWeiboImageModel *original;
@property (nonatomic, strong) NSString *filter_id;
@property (nonatomic, strong) NSString *object_id;
@property (nonatomic, strong) TestWeiboImageModel *middleplus;

@end
