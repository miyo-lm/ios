//
//  DDTVActiveController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVActiveController.h"
#import "DDTVActiveBodyView.h"
#import "DDTVActiveHeadView.h"

#define HeadH 70

@interface DDTVActiveController ()

@end

@implementation DDTVActiveController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建HeadView
    DDTVActiveHeadView *headView = [[DDTVActiveHeadView alloc] init];
    //创建bodyView
    DDTVActiveBodyView *bodyView = [[DDTVActiveBodyView alloc] init];
    //设置frame
    headView.frame = CGRectMake(0, 0, rFrameW, HeadH);
    bodyView.frame = CGRectMake(0, HeadH, rFrameW, rFrameH - HeadH);
    //设置HeadView的属性
    
    //设置bodyView的属性
    bodyView.backgroundColor = [UIColor systemGray6Color];
    //添加至self
    [self.view addSubview:headView];
    [self.view addSubview:bodyView];
    
    //设置分享按钮图标
    [headView setShareImg:[UIImage imageNamed:@"shareBtn"]];
    
}

@end
