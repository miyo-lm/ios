//
//  DDTVFristViewController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVFristViewController.h"
#import "DDTVFristScrollView.h"
#import "DDTVFristHeadView.h"

#define HeadH 120

@interface DDTVFristViewController ()

@end

@implementation DDTVFristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建HeadView
    DDTVFristHeadView *HeadView = [[DDTVFristHeadView alloc] init];
    //创建ScrollView
    DDTVFristScrollView *ScrollView = [[DDTVFristScrollView alloc] init];
    //设置两个View的大小
    HeadView.frame = CGRectMake(0, 0, rFrameW, HeadH);
    ScrollView.frame = CGRectMake(0, HeadH, rFrameW, rFrameH - HeadH);
    
    //设置HeadView的属性
    HeadView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_title_bar"]];
    //设置头像点击block
    HeadView.changePageToMyPage = ^(){
        self.tabBarController.selectedIndex = self.tabBarController.childViewControllers.count - 1;
    };
    
    //设置ScrollView的属性
//    ScrollView.constraints;
    //将两个view添加为子控件
    [self.view addSubview:HeadView];
    [self.view addSubview:ScrollView];
    
    //获取头像
    UIImage *iconImg = [UIImage imageNamed:@"头像"];
    //调用方法设置头像
    [HeadView setIconImg:iconImg];
    
    
    
}



@end
