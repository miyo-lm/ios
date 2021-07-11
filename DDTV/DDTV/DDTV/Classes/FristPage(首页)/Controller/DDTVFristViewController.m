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
    DDTVFristHeadView *HeadView = [[DDTVFristHeadView alloc] init];
    //创建ScrollView
    DDTVFristScrollView *ScrollView = [[DDTVFristScrollView alloc] init];
    //设置两个View的大小
    HeadView.frame = CGRectMake(0, 0, rFrameW, 100);
    ScrollView.frame = CGRectMake(0, 100, rFrameW, rFrameH - 100);
    
    //设置HeadView的属性
    HeadView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_title_bar"]];
    //设置ScrollView的属性
//    ScrollView.constraints;
    //将两个view添加为子控件
    [self.view addSubview:HeadView];
    [self.view addSubview:ScrollView];
    
    
    
}



@end
