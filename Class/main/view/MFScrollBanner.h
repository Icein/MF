//
//  MFScrollBanner.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MFScrollBanner;

@protocol MFScrollBannerDelegate <NSObject>



@optional
- (void)scrollBannerView:(MFScrollBanner*)scrllBanner clickTag:(NSInteger)tag ;

@end




@interface MFScrollBanner : UIView


+ (instancetype)scrollBannerWithFrame:(CGRect)frame imagesArrayWithNetworking:(NSArray*)dataSource placeholderImageName:(NSString *)placeholderImageName;


+(instancetype)scrollBannerWithFrame:(CGRect)frame
                        imageNameArray:(NSArray*)dataSource;

-(instancetype)initWithFrame:(CGRect)frame
              imageNameArray:(NSArray *)dataSource;


@property(nonatomic ,assign)BOOL       isCancelAutoNextPage;//取消自动轮播
@property(nonatomic ,assign)BOOL       isCancelPageControl;//取消pagecontrol;
@property(nonatomic ,assign)BOOL       isCancelInfiniteBanner;//取消无限轮播




@property (nonatomic ,weak) id <MFScrollBannerDelegate>delegate;


@end
