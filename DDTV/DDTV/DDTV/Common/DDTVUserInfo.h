//
//  DDTVUserInfo.h
//  DDTV
//
//  Created by 雷铭 on 2021/7/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DDTVUserInfo : NSObject

@property (nonatomic, strong) NSDictionary *userDict;

+(id)allocWithZone:(struct _NSZone *)zone;
+(instancetype)sharedUserInfo;


@end

NS_ASSUME_NONNULL_END
