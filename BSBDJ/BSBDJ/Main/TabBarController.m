//
//  TabBarController.m
//  BSBDJ
//
//  Created by 石原さとみ on 2018/7/11.
//  Copyright © 2018年 Tencent. All rights reserved.
//

#import "TabBarController.h"
#import "EssenceViewController.h"
#import "NewViewController.h"
#import "FriendTrendViewController.h"
#import "MeViewController.h"
#import "PublishViewController.h"
#import "UIImage+Render.h"
#import "NavigationViewController.h"

@interface TabBarController ()

@property (nonatomic, weak) UIButton * plusButton;

@end

@implementation TabBarController

+ (void)load{
    
    // 获取UITabBarItem外观
    UITabBarItem * item = [UITabBarItem appearance];
    
    NSMutableDictionary * attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [item setTitleTextAttributes:attr forState:UIControlStateNormal];
    
    /*
     appearance
     1.谁可以使用appearance 必须遵守UIAppearance协议，实现协议方法
     2.使用appearance,可以设置任何属性 不可以
     3.如果通过appearance设置属性，必须要在显示之前设置
     */
    
}

// 第一次使用当前类或子类的时候也会调用
// 可能会调用多次
//+ (void)initialize{
//    if (self == [TabBarController class]) {
//
//    }
//}

- (UIButton *)plusButton{
    if (_plusButton == nil) {
        // 创建加号按钮
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _plusButton = btn;
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        // 自适应
        [btn sizeToFit];

        [self.tabBar addSubview:btn];
    }
    return _plusButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.plusButton.center = CGPointMake(self.tabBar.bounds.size.width * 0.5, self.tabBar.bounds.size.height * 0.5);
    
    self.tabBar.tintColor = [UIColor blackColor];
    
    // 添加所有的子控制器
    [self addAllChildViewController];
    
    [self setupAllTabBarButton];
}

#pragma mark - 添加所有子控制器
- (void)addAllChildViewController{
    
    EssenceViewController * essenceVc = [[EssenceViewController alloc] init];
    NavigationViewController * essenceNav = [[NavigationViewController alloc] initWithRootViewController:essenceVc];
    [self addChildViewController:essenceNav];
    
    NewViewController * newVc = [[NewViewController alloc] init];
    NavigationViewController * newNav = [[NavigationViewController alloc] initWithRootViewController:newVc];
    [self addChildViewController:newNav];
    
    PublishViewController * publishVc = [[PublishViewController alloc] init];
    [self addChildViewController:publishVc];
    
    FriendTrendViewController * ftVc = [[FriendTrendViewController alloc] init];
    NavigationViewController * ftNav = [[NavigationViewController alloc] initWithRootViewController:ftVc];
    [self addChildViewController:ftNav];
    
    MeViewController * meVc = [[MeViewController alloc] init];
    NavigationViewController * meNav = [[NavigationViewController alloc] initWithRootViewController:meVc];
    [self addChildViewController:meNav];
    
}

#pragma mark - 设置UITabBar上所有按钮内容
- (void)setupAllTabBarButton{
    
    UINavigationController * nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage = [UIImage imageNamedWithOriginal:@"tabBar_essence_click_icon"];

    UINavigationController * nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageNamedWithOriginal:@"tabBar_new_click_icon"];
    
    UIViewController * vc = self.childViewControllers[2];
    vc.tabBarItem.enabled = NO;
//    vc.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
//    vc.tabBarItem.selectedImage = [UIImage imageNamedWithOriginal:@"tabBar_publish_icon"];
//
//    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    
    UINavigationController * nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"关注";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav3.tabBarItem.selectedImage = [UIImage imageNamedWithOriginal:@"tabBar_friendTrends_click_icon"];
    
    UINavigationController * nav4 = self.childViewControllers[4];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageNamedWithOriginal:@"tabBar_me_click_icon"];
}



@end
