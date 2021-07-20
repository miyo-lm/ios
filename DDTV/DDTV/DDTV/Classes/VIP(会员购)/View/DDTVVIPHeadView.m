//
//  DDTVVIPHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVVIPHeadView.h"



@interface DDTVVIPHeadView ()

@property (nonatomic, strong) UIButton *VIP1;
@property (nonatomic, strong) UIButton *VIP2;
@property (nonatomic, strong) UIButton *VIP3;

@property (nonatomic, strong) UILabel *mainText;
@property (nonatomic, strong) UILabel *minorText;



@end

@implementation DDTVVIPHeadView

-(instancetype)init{
    self = [super init];
    //创建按钮
    self.VIP1 = [[UIButton alloc] init];
    self.VIP2 = [[UIButton alloc] init];
    self.VIP3 = [[UIButton alloc] init];
    
    //创建textView
    self.mainText = [[UILabel alloc] init];
    self.mainText.backgroundColor = [UIColor clearColor];
    self.minorText = [[UILabel alloc] init];
    self.minorText.backgroundColor = [UIColor clearColor];
    
    //将按钮添加到view上
    [self addSubview:self.VIP1];
    [self addSubview:self.VIP2];
    [self addSubview:self.VIP3];
    
    //将textView添加到view上
    [self addSubview:self.mainText];
    [self addSubview:self.minorText];
    return self;
}

-(void)layoutSubviews{
    //设置按钮frame
    self.VIP3.frame = CGRectMake(rFrameW - iconInterval, vipHeadH - iconInterval, iconx, icony);
    self.VIP2.frame = CGRectMake(rFrameW - iconInterval * 2, vipHeadH - iconInterval, iconx, icony);
    self.VIP1.frame = CGRectMake(rFrameW - iconInterval * 3, vipHeadH - iconInterval, iconx, icony);
    
    //设置textView的frame
    self.mainText.frame = CGRectMake(interval, vipHeadH - interval - self.mainText.bounds.size.height, self.mainText.bounds.size.width, self.mainText.bounds.size.height);
    CGFloat minorX = self.mainText.frame.size.width + interval * 2;
    self.minorText.frame = CGRectMake(minorX, vipHeadH - interval - self.minorText.bounds.size.height, self.minorText.bounds.size.width, self.minorText.bounds.size.height);
    
}

#pragma mark - 设置按钮图标相关
- (void)setBtnImg:(UIImage *)img and:(int)tag{
    switch (tag) {
        case 1:
            [self.VIP1 setImage:img forState:UIControlStateNormal];
            break;
        case 2:
            [self.VIP2 setImage:img forState:UIControlStateNormal];
            break;
        case 3:
            [self.VIP3 setImage:img forState:UIControlStateNormal];
            break;
        default:
            break;
    }
}

#pragma mark - 设置textView的文本内容
- (void)setMainTxt:(NSString *)txt{
    self.mainText.text = txt;
    self.mainText.font = [UIFont fontWithName:@"AmericanTypewriter-Bold" size:18];
    [self setTextSize:self.mainText and:self.mainText.font];
}

- (void)setMinorTxt:(NSString *)txt{
    self.minorText.text = txt;
    self.minorText.font = [UIFont fontWithName:@"AmericanTypewriter" size:14];
    [self setTextSize:self.minorText and:self.minorText.font];
}

/**
 设置文本size的方法
 */
- (void)setTextSize:(UILabel *)tv and:(UIFont *)font{
    CGSize size = [tv.text sizeWithAttributes:@{NSFontAttributeName:font}];
    tv.bounds = CGRectMake(0, 0, size.width, size.height);
    
}

@end
