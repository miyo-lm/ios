//
//  DDTVMyPageController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVMyPageController.h"
#import "DDTVMyHeadView.h"
#import "DDTVMyBodyView.h"

#define HeadH 280


@interface DDTVMyPageController ()

@end

@implementation DDTVMyPageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建HeadView
    DDTVMyHeadView *headView = [[DDTVMyHeadView alloc] init];
    //创建BodyView
    DDTVMyBodyView *bodyView = [[DDTVMyBodyView alloc] init];
    //设置HeadView属性
    headView.frame = CGRectMake(0, 0, rFrameW, HeadH);
    //设置跳转页面的方法
    headView.changeNavigation = ^(UIViewController *vc){
        [self.navigationController pushViewController:vc animated:YES];
    };
//    [headView setUserIconImg:[self getIconImg:@"UserInfoList"]];
//    headView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MyBg"]];
    [headView setBGImg:[UIImage imageNamed:@"恋恋"]];
    
    
    //设置BodyView属性
    bodyView.frame = CGRectMake(0, rFrameH - HeadH, rFrameW, rFrameH - HeadH);
    //将view添加到self
    [self.view addSubview:headView];
    [self.view addSubview:bodyView];
    
    
}

@end
