//
//  DDTVMyHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVMyHeadView.h"
#import "DDTVSelfRoomMenuView.h"

#define HeadH 200
#define UserH 80

@interface DDTVMyHeadView ()

@property (nonatomic, strong) UIButton *scanBtn;
@property (nonatomic, strong) UIButton *skinBtn;
@property (nonatomic, strong) UIButton *changeShowBtn;
@property (nonatomic, strong) DDTVSelfRoomMenuView *user;
@property (nonatomic, strong) UIButton *activeBtn;
@property (nonatomic, strong) UIButton *subscribeBtn;
@property (nonatomic, strong) UIButton *fansBtn;


@end


@implementation DDTVMyHeadView

-(instancetype)init{
    self = [super init];
    //创建按钮
    self.scanBtn = [[UIButton alloc] init];
    self.skinBtn = [[UIButton alloc] init];
    self.changeShowBtn = [[UIButton alloc] init];
    self.activeBtn = [[UIButton alloc] init];
    self.subscribeBtn = [[UIButton alloc] init];
    self.fansBtn = [[UIButton alloc] init];
    
    self.user = [[DDTVSelfRoomMenuView alloc] init];
    
    //添加按钮
    [self addSubview:self.scanBtn];
    [self addSubview:self.skinBtn];
    [self addSubview:self.changeShowBtn];
    [self addSubview:self.activeBtn];
    [self addSubview:self.subscribeBtn];
    [self addSubview:self.fansBtn];
    [self addSubview:self.user];
    
    
    return self;
}

-(void)layoutSubviews{
    
    //设置按钮frame
    self.changeShowBtn.frame = CGRectMake(rFrameW - iconx - interval, top, iconx, icony);
    self.skinBtn.frame = CGRectMake(rFrameW - iconInterval * 2 , top, iconx, icony);
    self.scanBtn.frame = CGRectMake(rFrameW - iconInterval * 3 , top, iconx, icony);
    
    
    
    
    
    //设置用户界面frame
    self.user.frame = CGRectMake(0, interval * 2 + iconInterval, rFrameW, UserH);
    //设置属性
    [self.user setInfo:@"UserInfoList"];
    [self setAllIcon:@"MyPageIconList"];
    
}

#pragma mark - 设置图标相关
//从列表获取图标
- (void)setAllIcon:(NSString *)pathName{
    //获取文件
    NSString *path = [[NSBundle mainBundle] pathForResource:pathName ofType:@"plist"];
    //加载文件
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    //设置图标
    [self.scanBtn setImage:[UIImage imageNamed:dict[@"scan"]] forState:UIControlStateNormal];
    [self.skinBtn setImage:[UIImage imageNamed:dict[@"skin"]] forState:UIControlStateNormal];
    [self.changeShowBtn setImage:[UIImage imageNamed:dict[@"changeShow"]] forState:UIControlStateNormal];
}


#pragma mark - 设置背景
- (void)setBGImg:(UIImage *)img{
    //将图片绘制到layer上
    self.layer.contents = (id)img.CGImage;
    self.contentMode = UIViewContentModeScaleAspectFill;
}

@end
