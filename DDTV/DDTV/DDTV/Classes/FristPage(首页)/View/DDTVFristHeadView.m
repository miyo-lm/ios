//
//  DDTVFristHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVFristHeadView.h"

@interface DDTVFristHeadView ()

@property (nonatomic, strong) UIButton *icon;
@property (nonatomic, strong) UIButton *gameBtn;
@property (nonatomic, strong) UIButton *newsBtn;
@property (nonatomic, strong) UIButton *seekBtn;


@end


@implementation DDTVFristHeadView

-(instancetype)init{
    self = [super init];
    
    //创建HeadView的控件
    self.icon = [[UIButton alloc] init];
    self.gameBtn = [[UIButton alloc] init];
    self.newsBtn = [[UIButton alloc] init];
    self.seekBtn = [[UIButton alloc] init];
    
    //将按钮添加到view上
    [self addSubview:self.icon];
    [self addSubview:self.gameBtn];
    [self addSubview:self.newsBtn];
    [self addSubview:self.seekBtn];
    
    
    return self;
}


- (void)layoutSubviews{
    //设置按钮位置
    self.icon.frame = CGRectMake(interval, top, iconx, icony);
    //取消头像点击的高亮效果
    [self.icon setAdjustsImageWhenHighlighted:NO];
    [self.icon addTarget:self action:@selector(iconBtnClick) forControlEvents:UIControlEventTouchDown];
    //设置按钮位置
    self.gameBtn.frame = CGRectMake(rFrameW - iconInterval * 2, top, iconx, icony);
    self.newsBtn.frame = CGRectMake(rFrameW - iconInterval, top, iconx, icony);
    //计算搜索框的长度
    CGFloat seekx = self.gameBtn.frame.origin.x - self.icon.frame.origin.x - iconInterval;
    self.seekBtn.frame = CGRectMake(iconInterval + interval, top, seekx - 10, icony);
    //取消搜索框高亮效果
    [self.seekBtn setAdjustsImageWhenHighlighted:NO];

    
}

#pragma mark - 设置图标相关
//设置头像的方法
- (void)setIconImg:(UIImage *)img{
    [self.icon setImage:img forState:UIControlStateNormal];
    self.icon.layer.cornerRadius = iconx * 0.5;
    self.icon.layer.masksToBounds = YES;
}
//设置游戏中心图标的方法
- (void)setGameImg:(UIImage *)img{
    [self.gameBtn setImage:img forState:UIControlStateNormal];
}
//设置消息中心图标的方法
- (void)setNewsImg:(UIImage *)img{
    [self.newsBtn setImage:img forState:UIControlStateNormal];
}

//设置消息中心图标的方法
- (void)setSeekImg:(UIImage *)img{
    [self.seekBtn setImage:img forState:UIControlStateNormal];
}


#pragma mark - 点击事件
//点击头像后，跳转到我的页面
- (void)iconBtnClick{
    if (self.changePageToMyPage) {
        self.changePageToMyPage();
    }
}


@end
