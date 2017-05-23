//
//  MFSingleImageCell.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFSingleImageCell.h"
#import "MFRecommendModel.h"

@interface MFSingleImageCell ()
@property (weak, nonatomic) IBOutlet UIButton *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *moreButton;
@property (weak, nonatomic) IBOutlet UIImageView *imgeView;

@end





@implementation MFSingleImageCell


+ (instancetype)cellWithTableView:(UITableView *)tableView
{

    static NSString *ID = @"Single";
    
    
    MFSingleImageCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    
    
    return cell;
    

}



- (void)setModel:(MFRecommendModel *)model
{


    _model = model;
    self.imgeView.backgroundColor = [UIColor yellowColor];
    MFMovieModel *m = [model.movieArray lastObject];
    self.imgeView.image = [UIImage imageNamed: m.imageString];
   [self.imgeView setContentMode:UIViewContentModeCenter];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
