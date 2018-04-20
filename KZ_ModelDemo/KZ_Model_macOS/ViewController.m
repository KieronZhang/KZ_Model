//
//  ViewController.m
//  KZ_Model_macOS
//
//  Created by Kieron Zhang on 2018/4/19.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import "macOS_TestUser.h"
#import "macOS_User.h"
#import "macOS_TestModel.h"
#import "macOS_TestWeiboModel.h"
#import "KZ_macOS_TestModel.h"
#import <KZ_JSON_macOS/NSObject+KZ_JSON.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSDictionary *testDict = @{@"cousins" : @[@{@"name" : @"cousion1", @"age" : @(5), @"sex" : @"1"}, @{@"name" : @"cousion2", @"age" : @(5), @"sex" : @"1"}, @{@"name" : @"cousion3", @"age" : @(5), @"sex" : @"1"}]};
//    macOS_TestUser *testUser = [[macOS_TestUser alloc] init];
//    return;
//
//    NSValue *value = [NSValue valueWithPoint:CGPointMake(20, 20)];
//    NSLog(@"%@", [NSString stringWithFormat:@"%@", value]);
//    NSString *str = @"TextChar*";
//
//    KZ_macOS_TestModel *model = [[KZ_macOS_TestModel alloc] initWithJSON:@{@"testPoint" : value, @"aClass" : NSClassFromString(@"NSString")}];
//    model.seletor = @selector(modelSelector);
//    model.block = ^ {
//        NSLog(@"model block");
//    };
//    int *p2 = 2;
//    model.p1 = p2;
//    model.charText = str.UTF8String;
//    KZ_macOS_TestModel *copyModel = [model modelCopy];
//    [self performSelector:copyModel.seletor withObject:nil afterDelay:0];
//    copyModel.block();
//    NSLog(@"%@", [KZ_Model transModelToJSONObject:copyModel]);
//    return;
    
    itemsArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < 10; i++) {
        NSDictionary *dict = @{@"hello" : @"hello", @"name" : @"测试", @"age" : @(i * 10), @"sex" : @"1", @"father" : @{@"name" : @"father", @"age" : @(i + 20), @"sex" : @"1", @"father" : @{@"name" : @"fatherfather", @"age" : @(i + 30), @"sex" : @"1"}}, @"mother" : @{@"name" : @"mother", @"age" : @(i + 15), @"sex" : @"0"}, @"cousins" : @[@{@"name" : @"cousion1", @"age" : @(i + 5), @"sex" : @"1"}, @{@"name" : @"cousion2", @"age" : @(i + 5), @"sex" : @"1"}, @{@"name" : @"cousion3", @"age" : @(i + 5), @"sex" : @"1"}]};
        [array addObject:[dict JSONString]];
    }
    NSArray *userArray = [KZ_ModelArray JSONWithClass:[macOS_User class] json:array];
    [itemsArray addObjectsFromArray:userArray];
    
    for (macOS_User *user in itemsArray) {
        NSLog(@"%@", [KZ_Model transModelToJSONObject:user]);
    }
    
    NSScrollView *tableContainer = [[NSScrollView alloc] initWithFrame:self.view.bounds];
    mainTableView = [[NSTableView alloc] initWithFrame:self.view.bounds];
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    NSTableColumn *column = [[NSTableColumn alloc] initWithIdentifier:@"TableColumn"];
    column.width = CGRectGetWidth(tableContainer.frame);
    column.headerCell.stringValue = @"name";
    [mainTableView addTableColumn:column];
    tableContainer.documentView = mainTableView;
    tableContainer.hasVerticalScroller = YES;
    [self.view addSubview:tableContainer];
    
//    NSDictionary *dict = @{@"login" : @"facebook",
//                           @"id" : @"69631",
//                           @"avatar_url" : @"https://avatars.githubusercontent.com/u/69631?v=3",
//                           @"gravatar_id" : @"",
//                           @"url" : @"https://api.github.com/users/facebook",
//                           @"html_url" : @"https://github.com/facebook",
//                           @"followers_url" : @"https://api.github.com/users/facebook/followers",
//                           @"following_url" : @"https://api.github.com/users/facebook/following{/other_user}",
//                           @"gists_url" : @"https://api.github.com/users/facebook/gists{/gist_id}",
//                           @"starred_url" : @"https://api.github.com/users/facebook/starred{/owner}{/repo}",
//                           @"subscriptions_url" : @"https://api.github.com/users/facebook/subscriptions",
//                           @"organizations_url" : @"https://api.github.com/users/facebook/orgs",
//                           @"repos_url" : @"https://api.github.com/users/facebook/repos",
//                           @"events_url" : @"https://api.github.com/users/facebook/events{/privacy}",
//                           @"received_events_url" : @"https://api.github.com/users/facebook/received_events",
//                           @"type" : @"Organization",
//                           @"site_admin" : @"false",
//                           @"name" : @"Facebook",
//                           @"company" : @"",
//                           @"blog" : @"https://code.facebook.com/projects/",
//                           @"location" : @"Menlo Park, California",
//                           @"email" : @"",
//                           @"hireable" : @"",
//                           @"bio" : @"We work hard to contribute our work back to the web, mobile, big data, & infrastructure communities. NB: members must have two-factor auth.",
//                           @"public_repos" : @"174",
//                           @"public_gists" : @"12",
//                           @"followers" : @"0",
//                           @"following" : @"0",
//                           @"created_at" : @"2009-04-02T03:35:22Z",
//                           @"updated_at" : @"2016-09-21T15:36:43Z"};
//
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"macOS_TXT.txt" ofType:nil];
//    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    NSDictionary *weiboDict = [content JSONValue];
//
//    NSMutableArray *array1 = [NSMutableArray arrayWithCapacity:0];
//    NSLog(@"===========解析开始=============");
//    for (int i = 0; i < 10000; i++) {
//        macOS_TestModel *testModel = [[macOS_TestModel alloc] initWithJSON:dict];
//        [array1 addObject:testModel];
//    }
//    NSLog(@"===========解析结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========转换开始=============");
//    NSMutableArray *array2 = [NSMutableArray arrayWithCapacity:0];
//    for (macOS_TestModel *testModel in array1) {
//        [array2 addObject:[KZ_Model transModelToJSONObject:testModel]];
//    }
//    NSLog(@"===========转换结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========复制开始=============");
//    NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:0];
//    for (macOS_TestModel *testModel in array1) {
//        [array3 addObject:[testModel modelCopy]];
//    }
//    NSLog(@"===========复制结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSMutableArray *weiboArray1 = [NSMutableArray arrayWithCapacity:0];
//    NSLog(@"===========解析微博开始=============");
//    for (int i = 0; i < 1000; i++) {
//        macOS_TestWeiboModel *weiboModel = [[macOS_TestWeiboModel alloc] initWithJSON:weiboDict];
//        [weiboArray1 addObject:weiboModel];
//    }
//    NSLog(@"===========解析微博结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========转换微博开始=============");
//    NSMutableArray *weiboArray2 = [NSMutableArray arrayWithCapacity:0];
//    for (macOS_TestWeiboModel *weiboModel in weiboArray1) {
//        [weiboArray2 addObject:[KZ_Model transModelToJSONObject:weiboModel]];
//    }
//    NSLog(@"===========转换微博结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========复制微博开始=============");
//    NSMutableArray *weiboArray3 = [NSMutableArray arrayWithCapacity:0];
//    for (macOS_TestWeiboModel *weiboModel in weiboArray1) {
//        [weiboArray3 addObject:[weiboModel modelCopy]];
//    }
//    NSLog(@"===========复制微博结束=============");
}

#pragma mark NSTableViewDelegate
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return itemsArray.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return nil;
}

- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    macOS_User *user = itemsArray[row];
    NSTextFieldCell *textFieldCell = cell;
    textFieldCell.title = user.username;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
