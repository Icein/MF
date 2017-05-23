//
//  MFMainViewController.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFMainViewController.h"
#import "MFRecommendViewController.h"
#import "CAPSPageMenu.h"
@interface MFMainViewController ()
@property (nonatomic) CAPSPageMenu *pageMenu;
@end

@implementation MFMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setup];
    
}

- (void)setup
{

    self.title = @"首页";
    
    MFRecommendViewController *recommend = [[MFRecommendViewController alloc] init];
    
    
    recommend.title = @"推荐";
    
    
    
    UIViewController *zhibo = [[UIViewController alloc] init];
    zhibo.view.backgroundColor = [UIColor randomColor];
    zhibo.title = @"直播";
    
    UIViewController *movice = [[UIViewController alloc] init];
    movice.view.backgroundColor = [UIColor randomColor];
    movice.title = @"电影";
    
    UIViewController *TV = [[UIViewController alloc] init];
    TV.view.backgroundColor = [UIColor randomColor];
    TV.title = @"电视剧";
    
    UIViewController *zy = [[UIViewController alloc] init];
    zy.view.backgroundColor = [UIColor randomColor];
    zy.title = @"综艺";
    
    
    
    
    
    
    
    
    NSArray *controllerArray = @[recommend, zhibo, movice, TV,zy];
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionViewBackgroundColor: [UIColor colorWithRed:20.0/255.0 green:20.0/255.0 blue:20.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor orangeColor],
//                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor colorWithRed:70.0/255.0 green:70.0/255.0 blue:70.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionSelectedMenuItemLabelColor : [UIColor orangeColor],
                                 CAPSPageMenuOptionSelectedMenuItemLabelColor : [UIColor blackColor],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont fontWithName:@"HelveticaNeue" size:13.0],
                                 CAPSPageMenuOptionMenuHeight: @(40.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(kScreentWidth / 6),
                                 CAPSPageMenuOptionMenuItemSeparatorRoundEdges : @(NO),
//                                 CAPSPageMenuOptionMenuItemSeparatorWidth : @(YES),
//                                 CAPSPageMenuOptionCenterMenuItems: @(YES)
                                 };
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height - 45) options:parameters];
    [self.view addSubview:_pageMenu.view];

    
    
    
    
    
    
    
    
    
    
    
    



}





@end
