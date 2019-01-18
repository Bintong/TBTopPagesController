//
//  TBMainViewController.m
//  TBTopPagesController_Example
//
//  Created by BinTong on 2019/1/17.
//  Copyright © 2019 yaxun_123@163.com. All rights reserved.
//

#import "TBMainViewController.h"
#import "TBTopMainController.h"
#import "TBAViewController.h"
#import "TBBViewController.h"
#import "TBCViewController.h"
#define TBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define TBColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface TBMainViewController ()

@end

@implementation TBMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    TBTopMainController *vc = [[TBTopMainController alloc] init];
    TBAViewController *allList = [[TBAViewController alloc] init];
    TBBViewController *meList = [[TBBViewController alloc] init];
    TBCViewController *cCV = [[TBCViewController alloc] init];
    
    vc.segmentBgColor = [UIColor whiteColor];
    vc.indicatorViewColor = TBColorFromRGB(0xf9dc4a);
    vc.titleColor = TBColorFromRGB(0x999999);
    vc.titleSelectColor = TBColorFromRGB(0x333333);
    [vc setTitles:@[@"精选",@"发现",@"好友圈"]];
    [vc setViewControllers:@[allList, meList,cCV]];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
