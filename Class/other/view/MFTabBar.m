//
//  MFTabBar.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MFTabBar.h"

@interface MFTabBar ()

@property (nonatomic,weak) UIButton *centerButton;

@end




@implementation MFTabBar

//先初始化中间的那个按钮
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
//        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        self.backgroundColor = [UIColor grayColor];
         [self setShadowImage:[UIImage imageWithColor:[UIColor clearColor]]];
        UIButton *centerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [centerButton setBackgroundImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateNormal];
        [centerButton setBackgroundImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateHighlighted];
        
        
        [centerButton addTarget:self action:@selector(centerButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:centerButton];
        self.centerButton = centerButton;
    }
    return self;
}
- (void)centerButtonDidClick:(UIButton *)button

{
    
    if ([self.aDelegate respondsToSelector:@selector(tabBarCenterButtonDidClick:)]) {
        
        [self.aDelegate tabBarCenterButtonDidClick:self];
    }

    
    

}
-(void)layoutSubviews{
    [super layoutSubviews];
    
    //设置其他tabbar的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = self.bounds.size.width / 5;
    CGFloat buttonH = self.bounds.size.height;
    
   NSInteger index = 0;
    for (UIView *button in self.subviews) {
        
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")])continue;
        // 计算按钮的x值
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        button.frame = CGRectMake( buttonX, buttonY, buttonW, buttonH);
        
    
        
        
        index++;
    }
    
    
    CGSize size = self.centerButton.currentBackgroundImage.size;
    
    

    self.centerButton.frame = CGRectMake(0, -5, size.width,size.height);
    self.centerButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    
}
@end
