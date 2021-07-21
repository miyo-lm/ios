//
//  DDTVSelfRoomMenuView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVSelfRoomMenuView.h"
#import "DDTVRoomController.h"

#define userX 60
#define userY 60
#define labelInterval 5

@interface DDTVSelfRoomMenuView ()

@property (nonatomic, strong) UIButton * userIcon;
@property (nonatomic, strong) UILabel *userName;
@property (nonatomic, strong) UILabel *VIP;
@property (nonatomic, strong) UILabel *Bcoin;
@property (nonatomic, strong) UILabel *coin;
@property (nonatomic, strong) UILabel *room;


@end


@implementation DDTVSelfRoomMenuView

-(instancetype)init{
    self = [super init];
    //创建头像按钮
    self.userIcon = [[UIButton alloc] init];
    self.userName = [[UILabel alloc] init];
    self.VIP = [[UILabel alloc] init];
    self.Bcoin = [[UILabel alloc] init];
    self.coin = [[UILabel alloc] init];
    self.room = [[UILabel alloc] init];
    
    //添加控件到self
    [self addSubview:self.userIcon];
    [self addSubview:self.userName];
    [self addSubview:self.VIP];
    [self addSubview:self.Bcoin];
    [self addSubview:self.coin];
    [self addSubview:self.room];
    
    
    return self;
}

-(void)layoutSubviews{
    //设置信息
    [self setInfo];
    
    //设置头像frame
    self.userIcon.frame = CGRectMake(self.frame.size.height - userX, self.frame.size.height - userX, userX, userY);
    
    //禁用头像的点击
    self.userIcon.userInteractionEnabled = NO;
    
    //设置文本frame
    self.userName.frame = CGRectMake(self.frame.size.height + interval, interval * 2, self.userName.bounds.size.width, self.userName.bounds.size.height);
    
    //设置VIP标识frame
    CGFloat vipY = interval * 2 + self.userName.bounds.size.height + labelInterval;
    self.VIP.frame = CGRectMake(self.frame.size.height + interval, vipY, self.VIP.bounds.size.width, self.VIP.bounds.size.height);
    
    //设置硬币数、B币数frame
    CGFloat coinY = vipY + self.VIP.bounds.size.height + labelInterval;
    self.coin.frame = CGRectMake(self.frame.size.height + interval, coinY, self.coin.bounds.size.width, self.coin.bounds.size.height);
    CGFloat BcoinX = self.frame.size.height + interval * 2 + self.coin.bounds.size.width;
    self.Bcoin.frame = CGRectMake(BcoinX, coinY, self.Bcoin.bounds.size.width, self.Bcoin.bounds.size.height);
    
    //设置room的frame
    CGFloat roomx = self.bounds.size.width - self.room.bounds.size.width - interval;
    CGFloat roomy = (self.bounds.size.height - self.room.bounds.size.height) * 0.5;
    self.room.frame = CGRectMake(roomx, roomy, self.room.bounds.size.width, self.room.bounds.size.height);
    
    
    
    
}

#pragma mark - 设置文本内容
//设置用户信息
- (void)setInfo{
    //获取用户信息
    DDTVUserInfo *userInfo = [DDTVUserInfo sharedUserInfo];
    //加载数据
    NSDictionary *dict = userInfo.userDict;
    //设置用户头像
    [self setIcon:[UIImage imageNamed:dict[@"icon"]]];
    //设置用户名
    self.userName.text = dict[@"uname"];
    self.userName.font = [UIFont fontWithName:@"AmericanTypewriter-Bold" size:userNameSize];
    [self setTextSize:self.userName and:self.userName.font];
    
    //设置VIP
    self.VIP.text = dict[@"VIP"];
    self.VIP.font = [UIFont fontWithName:@"AmericanTypewriter" size:userInfoSize];
    [self setTextSize:self.VIP and:self.VIP.font];
    
    
    //设置硬币、B币
    NSNumber *BcoinNum = dict[@"Bcoin"];
    NSString *Bcoin = [NSString stringWithFormat:@"B币：%d",[BcoinNum intValue]];
    self.Bcoin.text = Bcoin;
    self.Bcoin.font = [UIFont fontWithName:@"AmericanTypewriter" size:userInfoSize];
    [self setTextSize:self.Bcoin and:self.Bcoin.font];
    
    NSNumber *coinNum = dict[@"coin"];
    NSString *coin = [NSString stringWithFormat:@"硬币：%d",[coinNum intValue]];
    self.coin.text = coin;
    self.coin.font = [UIFont fontWithName:@"AmericanTypewriter" size:userInfoSize];
    [self setTextSize:self.coin and:self.coin.font];
    
    //设置room
    self.room.text = @"空间 >";
    self.room.font = [UIFont fontWithName:@"AmericanTypewriter" size:userInfoSize];
    [self setTextSize:self.room and:self.room.font];
    
}

/**
 自动设置文本size的方法
 */
- (void)setTextSize:(UILabel *)tv and:(UIFont *)font{
    CGSize size = [tv.text sizeWithAttributes:@{NSFontAttributeName:font}];
    tv.bounds = CGRectMake(0, 0, size.width, size.height);
    
}


- (void)setIcon:(UIImage *)img{
    //设置图片
    [self.userIcon setImage:img forState:UIControlStateNormal];
    //切圆
    self.userIcon.layer.cornerRadius = userX * 0.5;
    self.userIcon.layer.masksToBounds = YES;
    
}


//点击后跳转到空间界面
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.toSelfRoom) {
        //调用跳转界面block
        self.toSelfRoom([[DDTVRoomController alloc] init]);
    }
}

@end
