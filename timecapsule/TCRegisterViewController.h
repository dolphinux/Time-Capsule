//
//  TCRegisterViewController.h
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCUserNameView.h"
#import "TCPassWordView.h"
#import "TCTelePhoneView.h"
#import "TCConfirmButton.h"
#import "TCCancelButton.h"
#import "TCLoginTitleLable.h"

@interface TCRegisterViewController : UIViewController

@property(nonatomic, strong)  TCLoginTitleLable *titleLabel;

@property(nonatomic, strong) TCUserNameView *username;

@property(nonatomic, strong) TCPassWordView *password;

@property(nonatomic, strong) TCPassWordView *verifyPassword;

@property(nonatomic, strong) TCTelePhoneView *telephone;

@property(nonatomic, strong) TCConfirmButton *confirmButton;

@property(nonatomic, strong) TCCancelButton *cancelButtton;

@end
