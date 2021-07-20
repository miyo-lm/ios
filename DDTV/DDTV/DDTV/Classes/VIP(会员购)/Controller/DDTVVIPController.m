//
//  DDTVVIPController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVVIPController.h"
#import "DDTVVIPBodyView.h"
#import "DDTVVIPHeadView.h"



@interface DDTVVIPController ()

@end

@implementation DDTVVIPController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建HeadView
    DDTVVIPHeadView *headView = [[DDTVVIPHeadView alloc] init];
    //创建BodyView
    DDTVVIPBodyView *bodyView = [[DDTVVIPBodyView alloc] init];
    //设置HeadView属性
    headView.frame = CGRectMake(0, 0, rFrameW, vipHeadH);
    //设置BodyView属性
    bodyView.frame = CGRectMake(0, vipHeadH, rFrameW, rFrameH - vipHeadH);
    //添加到self的view上
    [self.view addSubview:headView];
    [self.view addSubview:bodyView];
    
    //设置按钮图片
    for (int i = 1; i < 4; i++) {
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"VIP%d",i]];
        [headView setBtnImg:img and:i];
    }
    
    //设置headView文本内容
    [headView setMainTxt:@"会员购"];
    [headView setMinorTxt:@"VIPVIPVIP"];
    
}


@end
