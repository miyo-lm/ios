//
//  DDTVTabBarView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/11.
//

#import "DDTVTabBarView.h"


@interface DDTVTabBarView ()

@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation DDTVTabBarView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (void)setBGImg:(UIImage *)img{
////    self.backgroundColor = [UIColor colorWithPatternImage:img];
////
//    self.imgView = [[UIImageView alloc] initWithImage:img];
//    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
//    [self addSubview:self.imgView];
    
//    self.layer.contents = (id)img.CGImage;
    
//    self.backgroundColor = [UIColor greenColor];
//
//}

- (void)layoutSubviews{
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"海滩" ofType:@"png" inDirectory:@"icon"];
//    UIImage *img = [UIImage imageWithContentsOfFile:path];

//    self.imgView = [[UIImageView alloc] initWithImage:img];
//    self.imgView.frame = CGRectMake(0, -96, self.frame.size.width, self.frame.size.height);
//    self.imgView.contentMode = UIViewContentModeScaleAspectFill;
//    [self addSubview:self.imgView];
    
//    self.layer.contents = (id)img.CGImage;

    
    
    //创建butoon
    
    for (int i = 0; i < self.subviews.count; i++) {
        //获取btn
        UIButton * btn = self.subviews[i];
        
        //设置按钮位置
        btn.frame = CGRectMake(i * ([UIScreen mainScreen].bounds.size.width) / self.subviews.count, 0, self.frame.size.width / self.subviews.count, self.frame.size.height);
        
        btn.tag = i;
        
        
        
    }
    
    
}

- (void)btnClick:(UIButton *)sender{
    
}



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
