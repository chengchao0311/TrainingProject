//
//  DataCell.h
//  Test1
//
//  Created by forms on 3/30/16.
//  Copyright © 2016 forms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataCellViewModel : NSObject

@property NSString * imageUrlString;
@property NSString * content;

@end

@interface DataCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (void)configCell:(DataCellViewModel *)viewModel;

@end
