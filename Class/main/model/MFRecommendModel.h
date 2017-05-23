//
//  MFRecommendModel.h
//  MF
//
//  Created by admin on 2017/5/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MFRecommendModel : NSObject




@property (nonatomic , copy) NSString *title;

@property (nonatomic , strong) NSArray *movieArray;




@end


@interface MFMovieModel  : NSObject

@property (nonatomic , copy) NSString *name;

@property (nonatomic , copy) NSString *timeString;

@property (nonatomic , copy) NSString *imageString;




@end

