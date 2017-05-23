//
//  MFSingleImageCell.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MFRecommendModel;
@interface MFSingleImageCell : UITableViewCell


+ (instancetype)cellWithTableView:(UITableView*)tableView;




@property (nonatomic , strong) MFRecommendModel *model;

@end
