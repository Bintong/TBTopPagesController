//
//  TBTopMainController.m
//  Pods-TBTopPagesController_Example
//
//  Created by BinTong on 2019/1/17.
//

#import "TBTopMainController.h"
#import "TBSegmentControl.h"
@interface TBTopMainController ()<TBSegmentControlDelegate>

@property(nonatomic, strong) TBSegmentControl *segment;

@end

@implementation TBTopMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationItem setHidesBackButton:YES];

    [self buildMainView];
    // Do any additional setup after loading the view.
}


- (void)buildMainView {
//    if (self.viewControllers.count > 2) {
//        if (self.titles.count > 2) {
//
//        }
//    }

    if (self.titleColor == nil) {
        self.titleColor = [UIColor blackColor];
    }
    
    _itemWidth = 60.0f;
    _segment = [[TBSegmentControl alloc] initWithFrame:CGRectMake(0, 0, _itemWidth * 3, 30.0f)];
    _segment.titles = self.titles;
    _segment.controllers = self.viewControllers;
    _segment.cornerRadius = 5.0f;
    _segment.titleColor = self.titleColor;
    _segment.indicatorViewColor = self.indicatorViewColor;
    _segment.backgroundColor = self.segmentBgColor;
    _segment.superViewController = self;
    _segment.delegate = self;
    self.navigationItem.titleView = _segment;
    [_segment makeOther];
    
}

#pragma mark - JRSegmentControlDelegate

- (void)segmentControl:(TBSegmentControl *)segment didSelectedIndex:(NSInteger)index {
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
