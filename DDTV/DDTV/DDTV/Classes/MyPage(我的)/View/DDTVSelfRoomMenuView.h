//
//  DDTVSelfRoomMenuView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DDTVSelfRoomMenuView : UIView

@property (nonatomic, copy) void(^toSelfRoom)(UIViewController *);

- (void)setInfo:(NSString *)pathName;


@end

NS_ASSUME_NONNULL_END
