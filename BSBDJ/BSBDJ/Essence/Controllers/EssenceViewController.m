//
//  EssenceViewController.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "EssenceViewController.h"
#import "UIBarButtonItem+Item.h"

@interface EssenceViewController ()

@end

@implementation EssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBar];
}

- (void)setNavBar{
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem * gameItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(gameClick)];
    self.navigationItem.leftBarButtonItem = gameItem;
    
    UIBarButtonItem * item = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"RandomAcross"] highImage:[UIImage imageNamed:@"RandomAcrossClick"] target:self action:@selector(rightClick)];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (void)gameClick{
    NSLog(@"点击了Left");
}

- (void)rightClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
