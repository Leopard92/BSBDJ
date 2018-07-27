//
//  FriendTrendViewController.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "FriendTrendViewController.h"
#import "UIBarButtonItem+Item.h"

@interface FriendTrendViewController ()

@end

@implementation FriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBar];
}

- (void)setNavBar{
    
    self.navigationItem.title = @"我的关注";
    
    UIBarButtonItem * followItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"cellFollowDisableIcon"] highImage:[UIImage imageNamed:@"cellFollowClickIcon"] target:self action:@selector(followClick)];
    self.navigationItem.leftBarButtonItem = followItem;

    
    self.navigationItem.leftBarButtonItem = followItem;
}

- (void)followClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
