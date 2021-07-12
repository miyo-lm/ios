//
//  DDTVFristHeadView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/12.
//

#import "DDTVHeadViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DDTVFristHeadView : DDTVHeadViewModel

@property (nonatomic, copy) void(^changePageToMyPage)(void);

- (void)setIconImg:(UIImage *)img;
- (void)setGameImg:(UIImage *)img;
- (void)setNewsImg:(UIImage *)img;
- (void)setSeekImg:(UIImage *)img;

@end

NS_ASSUME_NONNULL_END
