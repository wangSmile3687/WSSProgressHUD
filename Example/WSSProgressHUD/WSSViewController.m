//
//  WSSViewController.m
//  WSSProgressHUD
//
//  Created by wangsi on 08/22/2019.
//  Copyright (c) 2019 wangsi. All rights reserved.
//

#import "WSSViewController.h"
#import <WSSProgressHUD.h>
@interface WSSViewController ()

@end

@implementation WSSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [WSSProgressHUD showMessageWithInWindow:@"hahahhah"];
//    [WSSProgressHUD showCustomImageWithMessage:@"哈哈哈哈" customImage:[UIImage imageNamed:@"animation1"] inview:self.view];
        [WSSProgressHUD showCustomAnimationWithMessage:@"嗯嗯嗯讷讷呢" withImgArry:@[[UIImage imageNamed:@"animation1"],[UIImage imageNamed:@"animation2"],[UIImage imageNamed:@"animation3"]] inview:self.view];
    });
     dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
             [WSSProgressHUD showProgressLoading:@"哈哈哈哈" inView:[WSSProgressHUD lastWindow] style:WSSProgressModeHUDStyleWhite];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [WSSProgressHUD hideHUDWithWindow];

            });
    //        [WDCProgressHUD showMessageWithInWindow:@"哈哈哈123"];

        });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
