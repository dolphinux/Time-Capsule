//
//  TCGuideViewController.m
//  timecapsule
//
//  Created by dolphinux on 13-11-18.
//  Copyright (c) 2013年 com.dolphinux. All rights reserved.
//

#import "TCGuideViewController.h"


@interface TCGuideViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) IFTTTAnimator *animator;
@property (nonatomic, strong) UIScrollView *sv;
@property (nonatomic, strong) UIPageControl *pageCtrl;
@end

@implementation TCGuideViewController

@synthesize sv=_sv;
@synthesize pageCtrl=_pageCtrl;

- (id)init
{
    self = [super init];
    if (self) {
        self.animator = [[IFTTTAnimator alloc] init];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    CGRect frame = self.view.bounds;

    
    _sv = [[UIScrollView alloc] initWithFrame:frame];
    _sv.delegate = self;
    _sv.pagingEnabled = YES;
    _sv.scrollsToTop = YES;
    _sv.showsHorizontalScrollIndicator = NO;
    _sv.showsVerticalScrollIndicator = NO;
    _sv.backgroundColor = [UIColor purpleColor];
    _sv.contentSize = CGSizeMake(frame.size.width*3, frame.size.height);
    [self.view addSubview:_sv];
    
    _pageCtrl = [[UIPageControl alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200)/2, self.view.frame.size.height-30, 200, 20)];
    _pageCtrl.numberOfPages = 3;
    _pageCtrl.currentPage = 0;
    [self.view addSubview:_pageCtrl];
    
    UIView *box1 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 40, 40)];
    box1.backgroundColor =  [UIColor yellowColor];
    
    IFTTTFrameAnimation *frameAnimation = [[IFTTTFrameAnimation alloc] init];
    frameAnimation.view =  box1;
    [frameAnimation addKeyFrame:[[IFTTTAnimationKeyFrame alloc] initWithTime:10 andFrame:CGRectMake(10, 10, 40, 40)]];
    [frameAnimation addKeyFrame:[[IFTTTAnimationKeyFrame alloc] initWithTime:100 andFrame:CGRectMake(400, 10, 200, 200)]];
    [frameAnimation addKeyFrame:[[IFTTTAnimationKeyFrame alloc] initWithTime:200 andFrame:CGRectMake(500, 10, 100, 100)]];
    
    [self.animator addAnimation:frameAnimation];
    [_sv addSubview:box1];
    
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(500,200, 100, 20)];
    [btn setTitle:@"开始体验" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(go2Home:) forControlEvents:UIControlEventTouchUpInside];
    [_sv addSubview:btn];
}

-(void)go2Home:(UIButton*)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
{
    int index = fabs(scrollView.contentOffset.x) / scrollView.frame.size.width;
    _pageCtrl.currentPage = index;
    
    [self.animator animate:scrollView.contentOffset.x];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
