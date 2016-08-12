//
//  CustomView.h
//  BUtton
//
//  Created by 赚发2 on 16/8/5.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^block)();

@interface CustomView : UIView

@property (nonatomic, copy) block block;


@end
