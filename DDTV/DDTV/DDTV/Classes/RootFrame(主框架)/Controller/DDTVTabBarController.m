//
//  DDTVTabBarController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/11.
//

#import "DDTVTabBarController.h"
#import "DDTVTabBarView.h"

@interface DDTVTabBarController ()

@end

@implementation DDTVTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //获取sb中的Controller
    UIViewController *FristPageController = [self loadSubViewControllerWithSBName:@"FristPage"];
    UIViewController *ActivePageController = [self loadSubViewControllerWithSBName:@"ActivePage"];
    UIViewController *VIPController = [self loadSubViewControllerWithSBName:@"VIP"];
    UIViewController *MyPageController = [self loadSubViewControllerWithSBName:@"MyPage"];
    
    //将Controller添加为子控制器
    self.viewControllers = @[FristPageController,ActivePageController,VIPController,MyPageController];
    
    //创建tabBar
    DDTVTabBarView *tabBar = [[DDTVTabBarView alloc] init];
    //设置TabBar
    tabBar.frame = CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
    
    [self.tabBar addSubview:tabBar];

    //设置tabBar的背景
    [tabBar setBGImg:[UIImage imageNamed:@"bg_title_bar"]];
//    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"bg_title_bar"]];
    //循环创建按钮
    for (int i = 0; i < self.viewControllers.count; i++) {
        //获取图片
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"嘉然%d",i + 1]];

        [tabBar setBtn:img];
        
        //设置TabBar的block
        tabBar.changeTabBar = ^(NSInteger tag){
            //切换当前页
            self.selectedIndex = tag;
        };
        
        
    }
    
}

- (UIViewController *)loadSubViewControllerWithSBName:(NSString *)name{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:name bundle:nil];
    return [sb instantiateInitialViewController];
}

@end
