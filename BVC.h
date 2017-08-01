//
//  BVC.h
//  Delegate
//
//  Created by jujutec－mac on 2017/8/1.
//  Copyright © 2017年 jujutec－mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChangeColorDelegate <NSObject>

//不写默认是@required

- (void)changeColor:(UIColor *)color;

@end

#import "ViewController.h"
@interface BVC : UIViewController

@property (nonatomic,strong)ViewController *pointVC;

@property (nonatomic,weak)id<ChangeColorDelegate>                delegate;
@end
