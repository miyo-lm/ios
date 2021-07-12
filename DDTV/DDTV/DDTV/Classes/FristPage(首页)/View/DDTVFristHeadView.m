//
//  DDTVFristHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVFristHeadView.h"
#define top 44
#define iconx 40
#define icony 40
#define interval 10
#define iconInterval 10 + iconx

@interface DDTVFristHeadView ()

@property (nonatomic, strong) UIButton *icon;
@property (nonatomic, strong) UIButton *gameBtn;
@property (nonatomic, strong) UIButton *newsBtn;


@end


@implementation DDTVFristHeadView

-(instancetype)init{
    self = [super init];
    
    //创建HeadView的控件
    self.icon = [[UIButton alloc] init];
    self.gameBtn = [[UIButton alloc] init];
    self.newsBtn = [[UIButton alloc] init];
    
    //将按钮添加到view上
    [self addSubview:self.icon];
    [self addSubview:self.gameBtn];
    [self addSubview:self.newsBtn];
    
    
    return self;
}

//设置头像的方法
- (void)setIconImg:(UIImage *)img{
    [self.icon setImage:img forState:UIControlStateNormal];
    self.icon.layer.cornerRadius = iconx * 0.5;
    self.icon.layer.masksToBounds = YES;
}

- (void)setGameImg:(UIImage *)img{
    [self.gameBtn setImage:img forState:UIControlStateNormal];
}

- (void)setNewsImg:(UIImage *)img{
    [self.newsBtn setImage:img forState:UIControlStateNormal];
}

- (void)layoutSubviews{
    //设置按钮位置
    self.icon.frame = CGRectMake(interval, top, iconx, icony);
    //取消头像点击的高亮效果
    [self.icon setAdjustsImageWhenHighlighted:NO];
    [self.icon addTarget:self action:@selector(iconBtnClick) forControlEvents:UIControlEventTouchDown];
    self.gameBtn.frame = CGRectMake(rFrameW - iconInterval * 2, top, iconx, icony);
    self.newsBtn.frame = CGRectMake(rFrameW - iconInterval, top, iconx, icony);
    
}

//点击头像后，跳转到我的页面
- (void)iconBtnClick{
    if (self.changePageToMyPage) {
        self.changePageToMyPage();
    }
}


@end
