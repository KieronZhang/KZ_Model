//
//  User.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_Model_iOS/KZ_Model.h>

@interface iOS_User : KZ_Model

@property (nonatomic, strong) NSString *username;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int sex;
@property (nonatomic, strong) iOS_User *father;
@property (nonatomic, strong) iOS_User *mother;
@property (nonatomic, strong) NSArray *cousins;
@property (nonatomic, strong) NSString *fatherName;
@property (nonatomic, strong) NSString *motherName;

@end
