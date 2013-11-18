//
//  TCLoginViewController.m
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCLoginViewController.h"
#import "TCHomeViewController.h"
#import "TCRegisterViewController.h"

@interface TCLoginViewController ()<UITextFieldDelegate>

@end

@implementation TCLoginViewController

@synthesize titleLabel=_titleLabel;
@synthesize username=_username;
@synthesize password=_password;
@synthesize signinButton=_signinButton;
@synthesize signupButton=_signupButton;

- (id)init
{
    self = [super init];
    if (self) {
        

        
    }
    return self;
}

-(void)dealloc
{
    _username = nil;
    _password = nil;
    _signinButton = nil;
    _signupButton = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = CGRectMake(0, 100, self.view.frame.size.width, 20);
    _titleLabel = [[TCLoginTitleLable alloc] initWithFrame:frame];
    [self.view addSubview:_titleLabel];
    
    
    frame.origin.x = 20;
    frame.origin.y += 40;
    frame.size.width = frame.size.width-40;
    frame.size.height = 40;
    _username = [[TCUserNameView alloc] initWithFrame:frame];
    _username.delegate = self;
    [self.view addSubview:_username];
    
    
    frame.origin.x = 20;
    frame.origin.y += (frame.size.height + 10);
    frame.size.width = frame.size.width;
    frame.size.height = 40;
    _password = [[TCPassWordView alloc] initWithFrame:frame];
    _password.delegate = self;
    [self.view addSubview:_password];
    
    
    frame.origin.x = 50;
    frame.origin.y += (frame.size.height + 20);
    frame.size.width = 80;
    frame.size.height = 50;
    _signinButton = [[TCSignInButton alloc] initWithFrame:frame];
    [_signinButton addTarget:self action:@selector(clickLogin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_signinButton];
    
    frame.origin.x = self.view.frame.size.width - 50 - 80;
    frame.size.width = 80;
    frame.size.height = 50;
    _signupButton = [[TCSignUpButton alloc] initWithFrame:frame];
    [_signupButton addTarget:self action:@selector(clickRegister:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_signupButton];
}


-(void)login
{

}

-(void)clickLogin:(id)sender
{
    TCHomeViewController *homeCtrl = [[TCHomeViewController alloc] init];
    
    [self.navigationController pushViewController:homeCtrl animated:YES];
}

-(void)clickRegister:(id)sender
{
    TCRegisterViewController *registerCtrl = [[TCRegisterViewController alloc] init];

    [self.navigationController setNavigationBarHidden:NO];
    [self.navigationController pushViewController:registerCtrl animated:YES];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
