//
//  MeViewController.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "MeViewController.h"
#import "SettingViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBar];
}

- (void)setNavBar{
    
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem * nightMode = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-sun-icon-click"] target:self action:@selector(nightClick:)];
    
    UIBarButtonItem * setting = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(settingClick)];

    self.navigationItem.rightBarButtonItems = @[setting,nightMode];
}

- (void)nightClick:(UIButton *)btn{
    btn.selected = !btn.selected;
}

- (void)settingClick{
    SettingViewController * vc = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
