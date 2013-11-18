//
//  TCLoginViewController.h
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCUserNameView.h"
#import "TCPassWordView.h"
#import "TCSignInButton.h"
#import "TCSignUpButton.h"
#import "TCLoginTitleLable.h"


@interface TCLoginViewController : UIViewController

@property(nonatomic, strong) TCLoginTitleLable *titleLabel;

@property(nonatomic, strong) TCUserNameView *username;

@property(nonatomic, strong) TCPassWordView *password;

@property(nonatomic, strong) TCSignInButton *signinButton;

@property(nonatomic, strong) TCSignUpButton *signupButton;

@end
