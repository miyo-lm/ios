//
//  DDTVTabBarView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DDTVTabBarView : UIView

@property (nonatomic, copy) void(^changeTabBar)(NSInteger);

- (void)setBtn:(UIImage *)img;
- (void)setBGImg:(UIImage *)img;

@end

NS_ASSUME_NONNULL_END
