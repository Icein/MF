//
//  MFImageCollectionViewCell.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFImageCollectionViewCell.h"
#import "MFRecommendModel.h"

@interface MFImageCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIView *connerViews;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageLayout;

@end




@implementation MFImageCollectionViewCell


- (void)setModel:(MFMovieModel *)model
{

    _model = model;
    
    
    
    
    if (model.name) {
        
        
        self.imageLayout.constant =  50;
        self.connerViews.hidden = NO;
        
        self.timerLabel.text = model.timeString;
        self.nameLabel.text = model.name;
    }else{
    
    
        self.imageLayout.constant = 0;
        self.connerViews.hidden = YES;
    
    }
    
    self.imageView.image = [UIImage imageNamed:model.imageString];


}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
    self.nameLabel.font = [UIFont boldSystemFontOfSize:14];
    self.nameLabel.textColor = kRGB(53, 53, 53);
    self.timerLabel.textColor = [UIColor lightGrayColor];
    self.timerLabel.font = [UIFont systemFontOfSize:12];
    
}

@end
