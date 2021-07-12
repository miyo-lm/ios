//
//  DDTVVIPHeadView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVHeadViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DDTVVIPHeadView : DDTVHeadViewModel

- (void)setBtnImg:(UIImage *)img and:(int)tag;
- (void)setMainTxt:(NSString *)txt;
- (void)setMinorTxt:(NSString *)txt;


@end

NS_ASSUME_NONNULL_END
