//
//  ViewController.m
//  BUtton
//
//  Created by 赚发2 on 16/8/3.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Crerial.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *roundView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_button roundWithSide:BBTSideTopRight spacing:3];
    
    [_roundView roundWithSide:BBTSideBottomRight | BBTSideBottomLeft spacing:5];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    DetailViewController *deatilVC = [[DetailViewController alloc] init];
    [self presentViewController:deatilVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
