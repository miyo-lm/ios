//
//  DDTVRoomController.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVRoomController.h"
#import "DDTVRoomHeadView.h"

#define HeadH 90

@interface DDTVRoomController ()

@property (nonatomic, strong) DDTVRoomHeadView *headView;

@end

@implementation DDTVRoomController

-(instancetype)init{
    self = [super init];
    //创建一个HeadView
    self.headView = [[DDTVRoomHeadView alloc] init];
    //添加到self上
    [self.view addSubview:self.headView];
    
    //隐藏tabBar
    self.hidesBottomBarWhenPushed = YES;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置HeadView的属性
    self.headView.frame = CGRectMake(0, 0, rFrameW, HeadH);
    __weak typeof(self) weakself = self;
    self.headView.backPage = ^(){
        [weakself.navigationController popViewControllerAnimated:YES];
    };
    
    
    self.view.backgroundColor = [UIColor systemGray6Color];
}

@end
