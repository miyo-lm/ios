//
//  DDTVFristViewController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVFristViewController.h"
#import "DDTVFristScrollView.h"
#import "DDTVFristHeadView.h"



@interface DDTVFristViewController ()

@end

@implementation DDTVFristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建HeadView
    DDTVFristHeadView *headView = [[DDTVFristHeadView alloc] init];
    //创建ScrollView
    DDTVFristScrollView *ScrollView = [[DDTVFristScrollView alloc] init];
    //设置两个View的大小
    headView.frame = CGRectMake(0, 0, rFrameW, fristViewHeadH);
    ScrollView.frame = CGRectMake(0, fristViewHeadH, rFrameW, rFrameH - fristViewHeadH);
    
    //设置HeadView的属性
    
    //设置头像点击block
    headView.changePageToMyPage = ^(){
        self.tabBarController.selectedIndex = self.tabBarController.childViewControllers.count - 1;
    };
    
    //设置ScrollView的属性
//    ScrollView.constraints;
    //将两个view添加为子控件
    [self.view addSubview:headView];
    [self.view addSubview:ScrollView];
    
    //获取头像
//    UIImage *iconImg = [UIImage imageNamed:@"头像"];
    //调用方法设置头像
    [headView setIconImg:[self getIconImg]];
    //设置游戏中心、消息中心、搜索框图片
    [headView setGameImg:[UIImage imageNamed:@"gameBtn"]];
    [headView setNewsImg:[UIImage imageNamed:@"newsBtn"]];
    [headView setSeekImg:[UIImage imageNamed:@"seekBtn"]];
    

    
    
    
}

- (UIImage *)getIconImg{
    //获取用户信息
    DDTVUserInfo *userInfo = [DDTVUserInfo sharedUserInfo];
    //加载数据
    NSDictionary *dict = userInfo.userDict;
    //获取图片
    UIImage *img = [UIImage imageNamed:dict[@"icon"]];
    //返回图片
    return img;
}


@end
