//
//  TCHomeViewController.m
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCHomeViewController.h"
#import "TCCapsuleViewController.h"
#import "TCFriendViewController.h"
#import "TCMyCapsuleViewController.h"
#import "TCSettingViewController.h"

@interface TCHomeViewController ()<UITabBarControllerDelegate>



@end

@implementation TCHomeViewController

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

    //胶囊
    TCCapsuleViewController *capsuleCtrl = [[TCCapsuleViewController alloc] init];
    
    NSInteger tag = 5;
    UITabBarItem *capsule = [[UITabBarItem alloc] initWithTitle:@"胶囊" image:nil tag:tag];
    
    UINavigationController *capsuleNav = [[UINavigationController alloc] initWithRootViewController:capsuleCtrl];
    capsuleNav.tabBarItem = capsule;
    capsuleNav.navigationBar.topItem.title = capsule.title;
    
    //好友
    TCFriendViewController *friendCtrl = [[TCFriendViewController alloc] init];

    UITabBarItem *friend = [[UITabBarItem alloc] initWithTitle:@"好友" image:nil tag:tag++];

    UINavigationController *friendNav = [[UINavigationController alloc] initWithRootViewController:friendCtrl];
    friendNav.tabBarItem = friend;
    friendNav.navigationBar.topItem.title = friend.title;
    
    //我的
    TCMyCapsuleViewController *myCapsuleCtrl = [[TCMyCapsuleViewController alloc] init];
    
    UITabBarItem *myCapsule = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:tag++];
    UINavigationController *myCapsuleNav = [[UINavigationController alloc] initWithRootViewController:myCapsuleCtrl];
    myCapsuleNav.tabBarItem = myCapsule;
    myCapsuleNav.navigationBar.topItem.title = myCapsule.title;
    
    //设置
    TCSettingViewController *settingCtrl = [[TCSettingViewController alloc] init];
    
    UITabBarItem *setting = [[UITabBarItem alloc] initWithTitle:@"设置" image:nil tag:tag++];

    
    UINavigationController *settinglNav = [[UINavigationController alloc] initWithRootViewController:settingCtrl];
    settinglNav.tabBarItem = setting;
    settinglNav.navigationBar.topItem.title = setting.title;
    
    
    self.delegate = self;
    
    [self setViewControllers:[[NSArray alloc] initWithObjects:capsuleNav, friendNav, myCapsuleNav, settinglNav,nil] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
