//
//  DataCell.m
//  Test1
//
//  Created by forms on 3/30/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import "DataCell.h"
#import <UIImageView+WebCache.h>

@implementation DataCellViewModel

@end

@implementation DataCell

- (void)awakeFromNib {
    [super awakeFromNib];
}


- (void)configCell:(DataCellViewModel *)viewModel{
    NSURL * url = [NSURL URLWithString:viewModel.imageUrlString];
    [self.imageView sd_setImageWithURL:url];
    [self.label setText:viewModel.content];
}


@end
