//
//  TestWeiboUserModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_ModelFramework/KZ_Model.h>
#import "TestWeiboBadgeModel.h"
#import "TestWeiboExtendModel.h"

@interface TestWeiboUserModel : KZ_Model

@property (nonatomic, strong) NSString *cover_image_phone;
@property (nonatomic, strong) NSString *user_id;
@property (nonatomic, assign) int bi_followers_count;
@property (nonatomic, assign) int urank;
@property (nonatomic, strong) NSString *profile_image_url;
@property (nonatomic, strong) NSArray *icons;
@property (nonatomic, assign) int user_class;
@property (nonatomic, strong) NSString *verified_contact_email;
@property (nonatomic, strong) NSString *province;
@property (nonatomic, assign) BOOL verified;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, assign) int statuses_count;
@property (nonatomic, assign) BOOL geo_enabled;
@property (nonatomic, assign) BOOL follow_me;
@property (nonatomic, strong) NSString *user_description;
@property (nonatomic, assign) int type;
@property (nonatomic, assign) int followers_count;
@property (nonatomic, strong) NSString *verified_contact_mobile;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) int mbrank;
@property (nonatomic, strong) NSString *avatar_large;
@property (nonatomic, assign) int star;
@property (nonatomic, strong) NSString *verified_trade;
@property (nonatomic, strong) NSString *profile_url;
@property (nonatomic, strong) NSString *weihao;
@property (nonatomic, assign) int online_status;
@property (nonatomic, strong) NSString *badge_top;
@property (nonatomic, strong) NSString *verified_contact_name;
@property (nonatomic, strong) NSString *screen_name;
@property (nonatomic, strong) NSString *verified_source_url;
@property (nonatomic, assign) int pagefriends_count;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *verified_reason;
@property (nonatomic, assign) int friends_count;
@property (nonatomic, assign) int mbtype;
@property (nonatomic, assign) int block_app;
@property (nonatomic, assign) int has_ability_tag;
@property (nonatomic, strong) NSString *avatar_hd;
@property (nonatomic, assign) int credit_score;
@property (nonatomic, strong) NSString *remark;
@property (nonatomic, strong) NSString *created_at;
@property (nonatomic, assign) int block_word;
@property (nonatomic, assign) int ulevel;
@property (nonatomic, assign) BOOL allow_all_act_msg;
@property (nonatomic, assign) int verified_state;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *verified_reason_modified;
@property (nonatomic, assign) int level;
@property (nonatomic, assign) BOOL allow_all_comment;
@property (nonatomic, assign) int verified_level;
@property (nonatomic, strong) NSString *verified_reason_url;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, assign) int favourites_count;
@property (nonatomic, strong) NSString *idstr;
@property (nonatomic, assign) int verified_type;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *verified_source;
@property (nonatomic, strong) TestWeiboBadgeModel *badge;
@property (nonatomic, assign) int user_ability;
@property (nonatomic, strong) TestWeiboExtendModel *extend;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, assign) int ptype;
@property (nonatomic, assign) BOOL following;

@end
