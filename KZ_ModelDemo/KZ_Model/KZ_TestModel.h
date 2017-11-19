//
//  KZ_TestModel.h
//  KZ_Model
//
//  Created by Kieron Zhang on 2017/3/27.
//  Copyright © 2017年 Kieron Zhang. All rights reserved.
//

#import <KZ_ModelFramework/KZ_Model.h>
#import <UIKit/UIKit.h>

@interface KZ_TestModel : KZ_Model

//@property (nonatomic, assign) CGRect testFrame;
@property (nonatomic, assign) CGPoint testPoint;
//@property (nonatomic, assign) CGSize testSize;
@property (nonatomic, assign) SEL seletor;
@property (nonatomic, strong) void(^block)(void);
@property (nonatomic, strong) Class aClass;
//@property (nonatomic, assign) char[10] *charSting;
@property (nonatomic, assign) int *p1;
@property (nonatomic, assign) char *charText;
@property (nonatomic, assign) char *charString;

@end
