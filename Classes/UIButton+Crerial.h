//
//  UIButton+Crerial.h
//  BUtton
//
//  Created by 赚发2 on 16/8/3.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, BBTSide) {
    BBTSideTopLeft         = 1 << 0,
    BBTSideTopRight        = 1 << 1,
    BBTSideBottomLeft      = 1 << 2,
    BBTSideBottomRight     = 1 << 3,
    BBTSideAll             = 0xffff
};

@interface UIView (Crerial)
- (void)roundWithSide:(BBTSide)side spacing:(CGFloat)spacing;
@end
