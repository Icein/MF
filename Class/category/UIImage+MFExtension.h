//
//  UIImage+MFExtension.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MFExtension)

+ (UIImage *)renderImageWithName:(NSString*)imageName;
/**
 *  根据颜色生成一张图片
 *  @param imageName 提供的颜色
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


@end
