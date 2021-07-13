//
//  DDTVRoomHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVRoomHeadView.h"

@interface DDTVRoomHeadView ()

@property (nonatomic, strong) UIButton *back;

@end


@implementation DDTVRoomHeadView



-(instancetype)init{
    self = [super init];
    //创建按钮
    self.back = [[UIButton alloc] init];
    
    //添加到self
    [self addSubview:self.back];
    
    return self;
}

-(void)layoutSubviews{
    //设置按钮属性
    self.back.frame = CGRectMake(interval, top, iconx, icony);
    [self.back setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    self.back.imageView.contentMode = UIViewContentModeScaleAspectFit;

    //绑定点击事件
    [self.back addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchDown];
}


//点击事件
- (void)backClick{
    if (self.backPage) {
        self.backPage();
    }
}


@end
