//
//  NewViewController.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "NewViewController.h"
#import "UIBarButtonItem+Item.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavBar];
}

- (void)setNavBar{
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem * reviewItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"review_post_nav_icon"] highImage:[UIImage imageNamed:@"review_post_nav_icon_click"] target:self action:@selector(reviewClick)];
    self.navigationItem.leftBarButtonItem = reviewItem;
    
    UIBarButtonItem * item = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_search_icon"] highImage:[UIImage imageNamed:@"nav_search_icon_click"] target:self action:@selector(searchClick)];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (void)reviewClick{
    
}

- (void)searchClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
