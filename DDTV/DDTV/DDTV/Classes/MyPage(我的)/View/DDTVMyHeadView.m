//
//  DDTVMyHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVMyHeadView.h"
#import "DDTVSelfRoomMenuView.h"


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
    //创建用户面板
    self.user = [[DDTVSelfRoomMenuView alloc] init];
    //设置跳转空间的方法
    __weak __typeof(self) weakSelf = self;
    self.user.toSelfRoom = ^(UIViewController *vc){
        //调用跳转页面点击事件
        [weakSelf btnClick:vc];
    };
    
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
    self.user.frame = CGRectMake(0, interval * 3 + iconInterval, rFrameW, UserH);
    
    
    //设置关注、粉丝、动态按钮
    CGFloat btnx = rFrameW / 3;
    CGFloat btny = self.user.frame.origin.y + self.user.frame.size.height + interval * 2;
    
    self.activeBtn.frame = CGRectMake(btnx * 0, btny, btnx, 48);
    [self.activeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    self.subscribeBtn.frame = CGRectMake(btnx * 1, btny, btnx, 48);
    [self.subscribeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    self.fansBtn.frame = CGRectMake(btnx * 2, btny, btnx, 60);
    [self.fansBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    //设置属性
    [self.user setInfo:@"UserInfoList"];
    [self setAllIcon:@"MyPageIconList"];
    [self setBtnInfo:@"UserInfoList"];
    
    
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

- (void)setBtnInfo:(NSString *)pathName{
    //获取文件
    NSString *path = [[NSBundle mainBundle] pathForResource:pathName ofType:@"plist"];
    //加载文件
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    //设置关注、粉丝、动态按钮
    NSNumber *acNum = dict[@"active"];
    [self.activeBtn setTitle:[NSString stringWithFormat:@"%d\n动态",[acNum intValue]] forState:UIControlStateNormal];
    self.activeBtn.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSNumber *sNum = dict[@"subscribe"];
    [self.subscribeBtn setTitle:[NSString stringWithFormat:@"%d\n关注",[sNum intValue]] forState:UIControlStateNormal];
    self.subscribeBtn.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSNumber *fsNum = dict[@"fans"];
    [self.fansBtn setTitle:[NSString stringWithFormat:@"%d\n粉丝",[fsNum intValue]] forState:UIControlStateNormal];
    self.fansBtn.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
}

#pragma mark - 设置背景
- (void)setBGImg:(UIImage *)img{
    //将图片绘制到layer上
    self.layer.contents = (id)img.CGImage;
    self.contentMode = UIViewContentModeScaleAspectFill;
}
//按钮点击事件 -- 跳转页面
- (void)btnClick:(UIViewController *)vc{
    //执行跳转页面的block
    if (self.changeNavigation) {
        self.changeNavigation(vc);
    }
}

@end
