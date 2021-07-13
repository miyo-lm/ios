//
//  DDTVMyPageController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVMyPageController.h"
#import "DDTVMyHeadView.h"
#import "DDTVMyBodyView.h"

#define HeadH 200


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
//    [headView setUserIconImg:[self getIconImg:@"UserInfoList"]];
//    headView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MyBg"]];
    [headView setBGImg:[UIImage imageNamed:@"豹豹"]];
    
    
    //设置BodyView属性
    bodyView.frame = CGRectMake(0, rFrameH - HeadH, rFrameW, rFrameH - HeadH);
    //将view添加到self
    [self.view addSubview:headView];
    [self.view addSubview:bodyView];
    
    
}

@end
