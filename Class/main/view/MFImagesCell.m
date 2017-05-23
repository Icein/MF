//
//  MFImagesCell.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFImagesCell.h"

#import "MFRecommendModel.h"
#import "MFImageCollectionViewCell.h"
@interface MFImagesCell ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIButton *titleButton;
@property (weak, nonatomic) IBOutlet UIButton *moreButton;

@end




@implementation MFImagesCell
+ (instancetype)cellWithTableView:(UITableView *)tableView
{

    static NSString *ID = @"Images";
    
    
    MFImagesCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    
    
    return cell;
    

    

}

static NSString *collID = @"collID";
- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    
    
    
    
    
}

- (void)setModel:(MFRecommendModel *)model
{

    
    _model = model;
    
    [self.titleButton setTitle:[NSString stringWithFormat:@"    %@",model.title] forState:UIControlStateNormal];
    [self.titleButton setTitleColor:kRGB(53, 53, 53) forState:UIControlStateNormal];
    self.titleButton.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    self.collectionView.delegate = nil;
    self.collectionView.dataSource = nil;
    self.collectionView.dataSource = self;
    
    self.collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"MFImageCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"MFImageCollection"];
    
    

}


#pragma mark ---- UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{


    
    
    return _model.movieArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{


    
    
    
    MFImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MFImageCollection" forIndexPath:indexPath];
    
    cell.model = _model.movieArray[indexPath.item];
    
    return cell;
    

}

#pragma mark ----- UICollectionViewDelegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{


    
    NSArray *arr = _model.movieArray;

    if (arr.count == 1) {
        
        return CGSizeMake(kScreentWidth, kScaleFrom_iPhone6s_Desgin(134) + 50 );
    }else{
    
    
    
        
        return CGSizeMake((kScreentWidth -  2) / 3 , kScaleFrom_iPhone6s_Desgin(134) + 50);
    }
    
    
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{



    

    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;
{


    
    NSArray *arr = _model.movieArray;
    
    if (arr.count == 1) {
        
        return 0;
    }else{
        
        
        
        
        return 1;
    }

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
