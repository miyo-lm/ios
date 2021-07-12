//
//  DDTVTabBarView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/11.
//

#import "DDTVTabBarView.h"


@interface DDTVTabBarView ()

@property (nonatomic, strong) UIImageView *imgView;

@property (nonatomic, copy)NSString *name;
@end

@implementation DDTVTabBarView


- (void)layoutSubviews{
    
    
    //创建butoon
    
    for (int i = 0; i < self.subviews.count; i++) {
        //获取btn
        UIButton * btn = self.subviews[i];
        
        //设置按钮位置
        btn.frame = CGRectMake(i * ([UIScreen mainScreen].bounds.size.width) / self.subviews.count, 0, self.frame.size.width / self.subviews.count, self.frame.size.height);
        
        btn.tag = i;
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
    }
    
    
}

//按钮点击事件
- (void)btnClick:(UIButton *)sender{
    //如果自己的block存在
    if (self.changeTabBar) {
        //执行block
        self.changeTabBar(sender.tag);
    }
}

//设置背景图
- (void)setBGImg:(UIImage *)img{
    //设置背景图
//    self.layer.contents = (id)img.CGImage;
    [[UITabBar appearance] setBackgroundImage:img];
}

//创建按钮及设置按钮图片
- (void)setBtn:(UIImage *)img{
    //初始化按钮
    UIButton *btn = [[UIButton alloc] init];
    //设置按钮图片
    [btn setImage:img forState:UIControlStateNormal];
    btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    //把按钮添加给自己
    [self addSubview:btn];
}

@end
