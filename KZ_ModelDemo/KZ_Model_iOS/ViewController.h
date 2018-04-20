//
//  ViewController.h
//  KZ_Model_iOS
//
//  Created by Kieron Zhang on 2018/4/19.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource> {
    UITableView *mainTableView;
    NSMutableArray *itemsArray;
}

@end
