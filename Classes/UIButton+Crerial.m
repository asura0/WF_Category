  //
//  UIButton+Crerial.m
//  BUtton
//
//  Created by 赚发2 on 16/8/3.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import "UIButton+Crerial.h"

@implementation UIView (Crerial)
- (void)roundWithSide:(BBTSide)side spacing:(CGFloat)spacing
{
    UIBezierPath *maskPath;
    switch (side) {
        case BBTSideTopLeft: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerTopLeft
                                                   cornerRadii:CGSizeMake(spacing, spacing)];
            break;
        }
        case BBTSideTopRight: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerTopRight
                                                   cornerRadii:CGSizeMake(spacing, spacing)];
            break;
        }
        case BBTSideBottomLeft: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerBottomLeft
                                                   cornerRadii:CGSizeMake(spacing, spacing)];
            break;
        }
        case BBTSideBottomRight: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerBottomRight
                                                   cornerRadii:CGSizeMake(spacing, spacing)];
            break;
        }
        case BBTSideAll: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerAllCorners
                                                   cornerRadii:CGSizeMake(spacing, spacing)];
            break;
        }
    }
    //上左,下左
    if (side == (BBTSideTopLeft | BBTSideBottomLeft)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上左,下右
    if (side == (BBTSideTopLeft | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上右,下左
    if (side == (BBTSideTopLeft | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上右,下右
    if (side == (BBTSideTopRight | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上右,上左
    if (side == (BBTSideTopRight | BBTSideTopLeft)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopRight | UIRectCornerTopLeft
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //下左,下右
    if (side == (BBTSideBottomLeft | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上左,上右,下左
    if (side == (BBTSideTopLeft | BBTSideBottomLeft | BBTSideTopRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight | UIRectCornerTopRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上左,上右,下右
    if (side == (BBTSideTopLeft | BBTSideBottomRight | BBTSideTopRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight | UIRectCornerTopRight
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上右,下左,下右
    if (side == (BBTSideTopRight | BBTSideBottomLeft | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight | UIRectCornerBottomLeft
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    //上左,下左,下右
    if (side == (BBTSideTopLeft | BBTSideBottomLeft | BBTSideBottomRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight | UIRectCornerBottomLeft
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    if (side == (BBTSideTopLeft | BBTSideBottomLeft | BBTSideBottomRight | BBTSideTopRight)) {
        maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                         byRoundingCorners:UIRectCornerAllCorners
                                               cornerRadii:CGSizeMake(spacing, spacing)];
    }
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    
    // Set the newly created shape layer as the mask for the image view's layer
    self.layer.mask = maskLayer;
    
    self.layer.masksToBounds = YES;
}



@end
