//
//  DDTVMyHeadView.m
//  DDTV
//
//  Created by 雷铭 on 2021/7/13.
//

#import "DDTVMyHeadView.h"

@implementation DDTVMyHeadView

-(instancetype)init{
    self = [super init];
    
    return self;
}

-(void)layoutSubviews{
    
}

- (void)setBGImg:(UIImage *)img{
    self.layer.contents = (id)img.CGImage;
    self.contentMode = UIViewContentModeScaleAspectFill;
}

@end
