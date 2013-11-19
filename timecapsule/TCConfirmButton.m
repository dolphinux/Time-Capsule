//
//  TCConfirmButton.m
//  timecapsule
//
//  Created by dolphinux on 13-11-19.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCConfirmButton.h"

@implementation TCConfirmButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitle:@"确定" forState:UIControlStateNormal];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
