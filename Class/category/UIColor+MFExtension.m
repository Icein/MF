//
//  UIColor+MFExtension.m
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIColor+MFExtension.h"

@implementation UIColor (MFExtension)
+ (UIColor*)randomColor

{
    
    CGFloat hue = (arc4random() %256/256.0);
    
    CGFloat saturation = (arc4random() %128/256.0) +0.5;
    
    CGFloat brightness = (arc4random() %128/256.0) +0.5;
    
    UIColor*color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
   return color;
    
}


@end
