//
//  MFTabBarController.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFTabBarController.h"
#import "MFTabBar.h"
#import "MFNavigationController.h"
#import "MFMainViewController.h"
#import "MFCenterViewController.h"
@interface MFTabBarController ()<MFTabBarDelegate>

@end

@implementation MFTabBarController
+(void)initialize{
    //通过apperance统一设置UITabBarItem的文字属性
    //后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAtts = [NSMutableDictionary dictionary];
    selectedAtts[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAtts[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self setupChildVc];
   

    MFTabBar *tabBar = [[MFTabBar alloc] init];
    //
    
    
    
    tabBar.aDelegate = self;
    
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
  
//    
    
    
}

- (void)viewDidAppear:(BOOL)animated
{

    [super viewDidAppear:animated];
  

}


- (void)setupChildVc
{

    [self setupChildVc:[[MFMainViewController alloc] init] title:@"首页" image:@"home_normal" selectedImage:@"home_highlight"];
    
    
    [self setupChildVc:[[UIViewController alloc] init] title:@"分区" image:@"fish_normal" selectedImage:@"fish_highlight"];
    [self setupChildVc:[[UIViewController alloc] init] title:@"应用中心" image:@"message_normal" selectedImage:@"message_highlight"];
    [self setupChildVc:[[UIViewController alloc] init] title:@"我的" image:@"account_normal" selectedImage:@"account_highlight"];


}

- (void)setupChildVc:(UIViewController *)childVc  title:(NSString *)title image:(NSString*)image selectedImage:(NSString*)selectedImage
{

    UINavigationController *navVc = [[MFNavigationController alloc]initWithRootViewController:childVc];
    
    childVc.tabBarItem.title = title;
    
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [UIImage renderImageWithName:selectedImage];
   childVc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
    [self addChildViewController:navVc];
    
    

    
    

}
#pragma mark ---- MFTabBarDelegate
- (void)tabBarCenterButtonDidClick:(MFTabBar *)tabBar
{

    
    MFCenterViewController *view = [[MFCenterViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];
    
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];


}

@end
