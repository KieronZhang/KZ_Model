//
//  ViewController.m
//  KZ_Model
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import "TestUser.h"
#import "User.h"
#import "TestModel.h"
#import "TestWeiboModel.h"
#import <KZ_JSONFramework/NSObject+KZ_JSON.h>
#import "KZ_TestModel.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSDictionary *testDict = @{@"cousins" : @[@{@"name" : @"cousion1", @"age" : @(5), @"sex" : @"1"}, @{@"name" : @"cousion2", @"age" : @(5), @"sex" : @"1"}, @{@"name" : @"cousion3", @"age" : @(5), @"sex" : @"1"}]};
//    TestUser *testUser = [[TestUser alloc] init];
//    return;
    
//    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(20, 20)];
//    NSLog(@"%@", [NSString stringWithFormat:@"%@", value]);
//    NSString *str = @"TextChar*";
//
//    KZ_TestModel *model = [[KZ_TestModel alloc] initWithJSON:@{@"testPoint" : value, @"aClass" : NSClassFromString(@"NSString")}];
//    model.seletor = @selector(modelSelector);
//    model.block = ^ {
//        NSLog(@"model block");
//    };
//    int *p2 = 2;
//    model.p1 = p2;
//    model.charText = str.UTF8String;
//    KZ_TestModel *copyModel = [model modelCopy];
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
    NSArray *userArray = [KZ_ModelArray JSONWithClass:[User class] json:array];
    [itemsArray addObjectsFromArray:userArray];
    
    for (User *user in itemsArray) {
        NSLog(@"%@", [KZ_Model transModelToJSONObject:user]);
    }
    
    databaseTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    databaseTableView.delegate = self;
    databaseTableView.dataSource = self;
    [self.view addSubview:databaseTableView];
    
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
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"TXT.txt" ofType:nil];
//    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    NSDictionary *weiboDict = [content JSONValue];
//
//    NSMutableArray *array1 = [NSMutableArray arrayWithCapacity:0];
//    NSLog(@"===========解析开始=============");
//    for (int i = 0; i < 10000; i++) {
//        TestModel *testModel = [[TestModel alloc] initWithJSON:dict];
//        [array1 addObject:testModel];
//    }
//    NSLog(@"===========解析结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========转换开始=============");
//    NSMutableArray *array2 = [NSMutableArray arrayWithCapacity:0];
//    for (TestModel *testModel in array1) {
//        [array2 addObject:[KZ_Model transModelToJSONObject:testModel]];
//    }
//    NSLog(@"===========转换结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========复制开始=============");
//    NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:0];
//    for (TestModel *testModel in array1) {
//        [array3 addObject:[testModel modelCopy]];
//    }
//    NSLog(@"===========复制结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSMutableArray *weiboArray1 = [NSMutableArray arrayWithCapacity:0];
//    NSLog(@"===========解析微博开始=============");
//    for (int i = 0; i < 1000; i++) {
//        TestWeiboModel *weiboModel = [[TestWeiboModel alloc] initWithJSON:weiboDict];
//        [weiboArray1 addObject:weiboModel];
//    }
//    NSLog(@"===========解析微博结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========转换微博开始=============");
//    NSMutableArray *weiboArray2 = [NSMutableArray arrayWithCapacity:0];
//    for (TestWeiboModel *weiboModel in weiboArray1) {
//        [weiboArray2 addObject:[KZ_Model transModelToJSONObject:weiboModel]];
//    }
//    NSLog(@"===========转换微博结束=============");
//
//    NSLog(@"========================================================================");
//
//    NSLog(@"===========复制微博开始=============");
//    NSMutableArray *weiboArray3 = [NSMutableArray arrayWithCapacity:0];
//    for (TestWeiboModel *weiboModel in weiboArray1) {
//        [weiboArray3 addObject:[weiboModel modelCopy]];
//    }
//    NSLog(@"===========复制微博结束=============");
}

- (void)modelSelector {
    NSLog(@"modelSelector");
}

#pragma mark UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *NameCell = @"NameCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NameCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:NameCell];
    }
    User *user = itemsArray[indexPath.row];
    cell.textLabel.text = user.username;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", user.age];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
