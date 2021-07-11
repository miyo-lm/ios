//
//  DDTVTabBarController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/11.
//

#import "DDTVTabBarController.h"

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
    
    
    
    
}

- (UIViewController *)loadSubViewControllerWithSBName:(NSString *)name{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:name bundle:nil];
    return [sb instantiateInitialViewController];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
