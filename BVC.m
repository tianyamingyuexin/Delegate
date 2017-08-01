//
//  BVC.m
//  Delegate
//
//  Created by jujutec－mac on 2017/8/1.
//  Copyright © 2017年 jujutec－mac. All rights reserved.
//

#import "BVC.h"

@interface BVC ()

@end

@implementation BVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btnCli:(UIButton *)sender
{
    UIColor *color = nil;
    switch (sender.tag)
    {
        case 0:
        {
            color = [UIColor redColor];
        }
            break;
        case 1:
        {
            color = [UIColor blackColor];
        }
            break;
        case 2:
        {
            color = [UIColor blueColor];
        }
            break;
            
        default:
            break;
    }
//    _pointVC.view.backgroundColor = color;
    if ([_delegate respondsToSelector:@selector(changeColor:)])
    {
        [_delegate changeColor:color];
    }
}



@end
