//
//  MFRecommendViewController.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFRecommendViewController.h"
#import "MFRecommendModel.h"
#import "MFScrollBanner.h"
#import "MFSingleImageCell.h"
#import "MFImagesCell.h"

@interface MFRecommendViewController ()<MFScrollBannerDelegate,UITableViewDelegate,UITableViewDataSource>




@property (nonatomic ,weak)UITableView *tableView;





@property (nonatomic , strong) NSArray *dataSource;

@end

@implementation MFRecommendViewController




- (NSArray *)dataSource
{

    if (!_dataSource) {
        
        NSMutableArray *arr = [NSMutableArray array];
        
        
        
        MFRecommendModel *model0 = [[MFRecommendModel alloc] init];
        model0.title = @"热门视频";
        NSInteger count = 6;
        NSMutableArray *movies = [NSMutableArray array];
        for (NSInteger i = 0 ; i < count ; i++ ) {
            
            
            MFMovieModel *m = [[MFMovieModel alloc] init];
            
            
            m.name = [NSString stringWithFormat:@"食人脸-%ld",i];
            m.timeString = [NSString stringWithFormat:@"01:30:0%ld",i];
            m.imageString = @"2.jpg";
            
            
            [movies addObject:m];
           
            
            
            
        }
        model0.movieArray = movies;
        MFRecommendModel *model1 = [[MFRecommendModel alloc] init];
        
        model1.title = @"热门专题";
        
        MFMovieModel *movie = [[MFMovieModel alloc] init];
        movie.imageString = @"1.jpg";
        
        model1.movieArray = @[movie];
        
        
        
        [arr addObject:model0];
        [arr addObject:model1];
        [arr addObject:model0];
        [arr addObject:model1];
        
        
        _dataSource = arr;
    }

    return _dataSource;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setup];
    
  
   
}

- (void)setup
{
    CGRect  rect = CGRectMake(0, 0, kScreentWidth,kScaleFrom_iPhone6s_Desgin(166) + 10);
    NSArray *arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"];
    MFScrollBanner *ScrollBanner = [MFScrollBanner scrollBannerWithFrame:rect imageNameArray:arr];
    ScrollBanner.delegate = self;
    //    ScrollBanner.isCancelAutoNextPage = YES;
    //    ScrollBanner.isCancelPageControl = YES;
    //    ScrollBanner.isCancelInfiniteBanner = YES;
//    [self.view addSubview:ScrollBanner];

    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    
    tableView.tableHeaderView = ScrollBanner;
    tableView.frame = CGRectMake(0, 0, kScreentWidth, kScreentHeight - 50);
    
    tableView.backgroundColor = kRGB(240, 240, 240);
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    tableView.contentInset = UIEdgeInsetsMake(0, 0, 44 + 40 + 20, 0);
    self.tableView = tableView;
    
   

}





#pragma  mark ---- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{


   
    return self.dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{


    
    
    MFImagesCell *cell = [MFImagesCell cellWithTableView:tableView];
    
    
    cell.model = self.dataSource[indexPath.row];
    
//    UITableViewCell *cell = nil;
//    
//    MFRecommendModel *model = self.dataSource[indexPath.row];
//    
//    if (model.movieArray.count == 1) {
//        
//        
//        cell = [MFSingleImageCell cellWithTableView:tableView];
//        
//        MFSingleImageCell *singleCell = (MFSingleImageCell *)cell;
//        
////        singleCell.model = model;
//        
//    }else{
//    
//        cell = [MFImagesCell cellWithTableView:tableView];
//    
//        
//        MFImagesCell *imagesCell = (MFImagesCell *)cell;
////        imagesCell.model = model;
//        
//        
//    }
    
    
    
    
    
    return cell;
    
    
    

}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{


    MFRecommendModel *model = self.dataSource[indexPath.row];
    
    
    if (model.movieArray.count == 1) {
        
//        return 220;
        return  50 + 10 + kScaleFrom_iPhone6s_Desgin(134) +50;
    }else{
    
    
        return    50 + (kScaleFrom_iPhone6s_Desgin(134) + 50 )  * 2+10;
//        return 370; 
    }
    
    

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{



}
#pragma mark ---- MFScrollBannerDelegate
- (void)scrollBannerView:(MFScrollBanner *)scrllBanner clickTag:(NSInteger)tag
{


    
    
    DLog(@"%@",@(tag));
    
    
    
    

}



@end
