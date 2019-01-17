//
//  TBViewController.m
//  TBTopPagesController
//
//  Created by yaxun_123@163.com on 01/17/2019.
//  Copyright (c) 2019 yaxun_123@163.com. All rights reserved.
//

#import "TBViewController.h"
#import "TBTopMainController.h"
#import "TBAViewController.h"
#import "TBBViewController.h"

@interface TBViewController ()

@end

@implementation TBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TBTopMainController *vc = [[TBTopMainController alloc] init];
    TBAViewController *allList = [[TBAViewController alloc] init];
    TBBViewController *meList = [[TBBViewController alloc] init];
    
    vc.segmentBgColor = [UIColor whiteColor];//[UIColor blackColor];//[UIColor colorWithRed:18.0f/255 green:50.0f/255 blue:110.0f/255 alpha:1.0f];
    vc.indicatorViewColor = [UIColor whiteColor];
    vc.titleColor = [UIColor blackColor];
    [vc setTitles:@[@"页面1",@"页面2"]];
    [vc setViewControllers:@[allList, meList]];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
