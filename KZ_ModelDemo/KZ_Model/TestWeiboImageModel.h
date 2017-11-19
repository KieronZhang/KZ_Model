//
//  TestWeiboImageModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import <KZ_ModelFramework/KZ_Model.h>

@interface TestWeiboImageModel : KZ_Model

@property (nonatomic, assign) int cut_type;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, assign) int width;
@property (nonatomic, assign) int height;

@end
