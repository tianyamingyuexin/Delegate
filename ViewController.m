//
//  ViewController.m
//  Delegate
//
//  Created by jujutec－mac on 2017/8/1.
//  Copyright © 2017年 jujutec－mac. All rights reserved.
//

#import "ViewController.h"
#import "BVC.h"
@interface ViewController ()<ChangeColorDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
}

- (IBAction)goToNext:(UIButton *)sender
{
    BVC *vc = [[BVC alloc] init];
    vc.pointVC = self;
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

@end
