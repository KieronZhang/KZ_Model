//
//  TestWeiboModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_ModelFramework/KZ_Model.h>
#import "TestWeiboUserModel.h"
#import "TestWeiboVisibleModel.h"
#import "TestWeiboImageInfoModel.h"

@interface TestWeiboModel : KZ_Model

@property (nonatomic, assign) BOOL favorited;
@property (nonatomic, assign) int attitudes_status;
@property (nonatomic, strong) NSDate *created_at;
@property (nonatomic, strong) NSString *test_id;
@property (nonatomic, assign) BOOL truncated;
@property (nonatomic, strong) NSString *in_reply_to_screen_name;
@property (nonatomic, strong) NSString *mblogid;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *idstr;
@property (nonatomic, strong) NSString *source_type;
@property (nonatomic, strong) NSString *geo;
@property (nonatomic, strong) TestWeiboUserModel *user;
@property (nonatomic, assign) int comments_count;
@property (nonatomic, strong) NSString *thumbnail_pic;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, assign) int recom_state;
@property (nonatomic, assign) int source_allowclick;
@property (nonatomic, assign) int biz_feature;
@property (nonatomic, strong) NSString *mblogtypename;
@property (nonatomic, strong) NSArray *annotations;
@property (nonatomic, strong) NSString *filterID;
@property (nonatomic, strong) NSString *bmiddle_pic;
@property (nonatomic, strong) NSString *scheme;
@property (nonatomic, strong) TestWeiboVisibleModel *visible;
@property (nonatomic, strong) NSString *in_reply_to_status_id;
@property (nonatomic, strong) NSString *mid;
@property (nonatomic, strong) NSArray *pic_ids;
@property (nonatomic, assign) int reposts_count;
@property (nonatomic, assign) int mlevel;
@property (nonatomic, assign) int attitudes_count;
@property (nonatomic, strong) NSArray *darwin_tags;
@property (nonatomic, assign) int userType;
@property (nonatomic, strong) NSDictionary *pic_infos;
@property (nonatomic, strong) NSArray *in_reply_to_user_id;
@property (nonatomic, strong) NSArray *original_pic;

@end
