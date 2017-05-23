//
//  MFTabBar.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MFTabBar;

@protocol MFTabBarDelegate <NSObject>

@optional
- (void)tabBarCenterButtonDidClick:(MFTabBar *)tabBar;

@end



@interface MFTabBar : UITabBar


@property (nonatomic ,weak) id <MFTabBarDelegate>aDelegate;


@end
