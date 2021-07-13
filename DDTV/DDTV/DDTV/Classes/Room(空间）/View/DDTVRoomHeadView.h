//
//  DDTVRoomHeadView.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVHeadViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DDTVRoomHeadView : DDTVHeadViewModel

@property (nonatomic, copy) void(^backPage)(void);

@end

NS_ASSUME_NONNULL_END
