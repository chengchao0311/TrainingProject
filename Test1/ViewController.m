//
//  ViewController.m
//  Test1
//
//  Created by forms on 3/14/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "DataCell.h"

NSString * const cellID = @"Cell";

@interface ViewController (){
    NSArray * array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   
   [self initData];
   [self initView];
    
    
}

- (void)initData{
    
    DataCellViewModel * viewModel1 = [[DataCellViewModel alloc] init];
    viewModel1.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel1.content = @"我有一个爱好是刷知乎，于是我的第一份工作选择了知乎。";
    
    DataCellViewModel * viewModel2 = [[DataCellViewModel alloc] init];
    viewModel2.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel2.content = @"你能在爱好领域不是一个「消费者」而有能力成为一个「创作者」、「生产者」";
    
    DataCellViewModel * viewModel3 = [[DataCellViewModel alloc] init];
    viewModel3.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel3.content = @"至于我最终还是选择了 B 路线，掌握产品设计技能的同时能熟知二次元文化特征。而且幸运的是这个技能并不是我讨厌的事情，也算是广义的兴趣爱好，理想——让一个喜欢的产品变得更好。";
    
    DataCellViewModel * viewModel4 = [[DataCellViewModel alloc] init];
    viewModel4.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel4.content = @"这也是「把爱好当事业是否可怕」的直接答案：当你发现自己的能力、对爱好的付出根本没有脸去说自己爱它。";
    
    DataCellViewModel * viewModel5 = [[DataCellViewModel alloc] init];
    viewModel5.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel5.content = @"特长与技能将成为我在社会立足的根基，而爱好将成为我事业的加分项";
    
    DataCellViewModel * viewModel6 = [[DataCellViewModel alloc] init];
    viewModel6.imageUrlString = @"https://pic3.zhimg.com/fb20671530d7350d6d9708dfbdd44b0e_b.jpg";
    viewModel6.content = @"正如我从小到大老师对我的评价——半瓶不满，晃来晃去。";
    
    array = @[viewModel1,viewModel2, viewModel3, viewModel4, viewModel5, viewModel6];
}

- (void)initView{
    UIEdgeInsets padding = UIEdgeInsetsMake(30, 10, 10, 10);
    [self.tableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(padding);
    }];
    
    [self.tableview registerNib:[UINib nibWithNibName:@"DataCell" bundle:nil] forCellReuseIdentifier:cellID];
    [self.tableview setDelegate:self];
    [self.tableview setDataSource:self];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DataCell * dataCell = (DataCell *)[tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    DataCellViewModel * viewModel = (DataCellViewModel *)array[indexPath.row];
    [dataCell configCell:viewModel];
    return dataCell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return array.count;
}

@end
