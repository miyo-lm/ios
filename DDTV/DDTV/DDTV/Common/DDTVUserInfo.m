//
//  DDTVUserInfo.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/21.
//

#import "DDTVUserInfo.h"

@interface DDTVUserInfo ()



@end



@implementation DDTVUserInfo

+(id)allocWithZone:(struct _NSZone *)zone
{
    //声明一个静态变量
    static id instance = nil;
    if (instance == nil) {
        //是线程安全的，onceToKen默认是0
        static dispatch_once_t onceToken;
        //dispatch_once宏可以保证代码中的代码只会被执行一次。
        //调用父类的allocWithZone方法
        dispatch_once(&onceToken, ^{
            instance = [super allocWithZone:zone];
        });
    }
    //返回
    return instance;
}

+(instancetype)sharedUserInfo
{
    return [[self alloc]init];
}


@end
