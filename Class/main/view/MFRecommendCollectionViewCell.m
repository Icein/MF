//
//  MFRecommendCollectionViewCell.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFRecommendCollectionViewCell.h"


@interface MFRecommendCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end



@implementation MFRecommendCollectionViewCell
-(void)setLycollectionViewCellWithImage:(NSString *)imageName
placeholderImage:(NSString *)placeholderImage
isNeedNetworking:(BOOL)isNeedNetworking{
    
    if(isNeedNetworking == NO){
        
        [self.imageView setImage:[UIImage imageNamed:imageName]];
        
    }else{
        
//        [self.imageView sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:placeholderImage]];
    }
    
    [self.imageView setContentMode:UIViewContentModeScaleAspectFill];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
