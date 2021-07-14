//
//  DDTVActiveHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVActiveHeadView.h"


@interface DDTVActiveHeadView ()

@property (nonatomic, strong) UIButton *shareBtn;

@end

@implementation DDTVActiveHeadView

-(instancetype)init{
    self = [super init];
    //创建分享按钮
    self.shareBtn = [[UIButton alloc] init];
    //添加按钮到view上
    [self addSubview:self.shareBtn];
    return self;
}

-(void)layoutSubviews{
    self.shareBtn.frame = CGRectMake(rFrameW - iconInterval, self.frame.size.height - icony, iconx, icony);
}

#pragma mark - 设置图标相关
- (void)setShareImg:(UIImage *)img{
    [self.shareBtn setImage:img forState:UIControlStateNormal];
}

@end
