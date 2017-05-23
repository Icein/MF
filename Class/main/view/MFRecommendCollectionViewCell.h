//
//  MFRecommendCollectionViewCell.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFRecommendCollectionViewCell : UICollectionViewCell
- (void)setLycollectionViewCellWithImage:(NSString *)imageName
                        placeholderImage:(NSString *)placeholderImage
                        isNeedNetworking:(BOOL)isNeedNetworking;
@end
