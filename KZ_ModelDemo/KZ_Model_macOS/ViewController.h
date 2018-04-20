//
//  ViewController.h
//  KZ_Model_macOS
//
//  Created by Kieron Zhang on 2018/4/19.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource> {
    NSTableView *mainTableView;
    NSMutableArray *itemsArray;
}

@end
