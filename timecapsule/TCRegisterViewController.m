//
//  TCRegisterViewController.m
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCRegisterViewController.h"
#import "TCHomeViewController.h"

@interface TCRegisterViewController ()

@end

@implementation TCRegisterViewController

@synthesize titleLabel=_titleLabel;

@synthesize username=_username;
@synthesize password=_password;
@synthesize verifyPassword=_verifyPassword;
@synthesize confirmButton=_confirmButton;
@synthesize cancelButtton=_cancelButtton;

- (id)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame;
    
    frame.origin.x = 20;
    frame.origin.y = 80;
    frame.size.width = self.view.bounds.size.width-40;
    frame.size.height = 30;
    _titleLabel = [[TCLoginTitleLable alloc] initWithFrame:frame];
    _titleLabel.text = @"注册";
    
    [self.view addSubview:_titleLabel];
    
    frame.origin.y += (frame.size.height + 10);
    _username = [[TCUserNameView alloc] initWithFrame:frame];
    [self.view addSubview:_username];
    
    frame.origin.y += (frame.size.height + 10);
    _telephone = [[TCTelePhoneView alloc] initWithFrame:frame];
    [self.view addSubview:_telephone];
    
    frame.origin.y += (frame.size.height + 10);
    _password = [[TCPassWordView alloc] initWithFrame:frame];
    [self.view addSubview:_password];
    
    frame.origin.y += (frame.size.height + 10);
    _verifyPassword = [[TCPassWordView alloc] initWithFrame:frame];
    _verifyPassword.placeholder = @"重复密码";
    [self.view addSubview:_verifyPassword];
    
    
    frame.origin.x = 40;
    frame.origin.y += (frame.size.height + 30);
    frame.size.width = 80;
    frame.size.height = 30;
    _confirmButton = [[TCConfirmButton alloc] initWithFrame:frame];
    [_confirmButton addTarget:self action:@selector(ClickConfirm:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_confirmButton];
    
    frame.origin.x = self.view.bounds.size.width - 40 - frame.size.width;
    _cancelButtton = [[TCCancelButton alloc] initWithFrame:frame];
    [_cancelButtton addTarget:self action:@selector(ClickCancel:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_cancelButtton];
}

-(void)ClickConfirm:(UIButton *)btn
{
    TCHomeViewController *homeCtrl = [[TCHomeViewController alloc] init];
    
    [self presentViewController:homeCtrl animated:YES completion:nil];
}


-(void)ClickCancel:(UIButton *)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    

}

@end
