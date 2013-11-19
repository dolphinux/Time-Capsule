//
//  TCTelePhoneView.m
//  timecapsule
//
//  Created by dolphinux on 13-11-19.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCTelePhoneView.h"

@implementation TCTelePhoneView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.placeholder = @"手机号码";
        self.returnKeyType = UIReturnKeyDone;
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.keyboardType = UIKeyboardTypePhonePad;
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
