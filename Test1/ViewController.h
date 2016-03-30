//
//  ViewController.h
//  Test1
//
//  Created by forms on 3/14/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableview;



@end

