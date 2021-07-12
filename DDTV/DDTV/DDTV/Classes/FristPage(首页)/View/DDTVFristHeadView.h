//
//  DDTVFristHeadView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DDTVFristHeadView : UIView

@property (nonatomic, copy) void(^changePageToMyPage)();

- (void)setIconImg:(UIImage *)img;
- (void)setGameImg:(UIImage *)img;
- (void)setNewsImg:(UIImage *)img;

@end

NS_ASSUME_NONNULL_END
