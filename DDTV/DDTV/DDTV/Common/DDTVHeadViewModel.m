//
//  DDTVHeadViewModel.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVHeadViewModel.h"

@implementation DDTVHeadViewModel

- (instancetype)init{
    self = [super init];
    
    //设置背景
//    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_title_bar"]];
    self.layer.contents = (id)[UIImage imageNamed:@"bg_title_bar"].CGImage;
    self.contentMode = UIViewContentModeScaleAspectFill;
    return self;
}

@end
