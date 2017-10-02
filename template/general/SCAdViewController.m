//
//  SCAdViewController.m
//  template
//
//  Created by wupeng on 02/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "SCAdViewController.h"

@interface SCAdViewController ()

@end

@implementation SCAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[[UIApplication sharedApplication] setStatusBarHidden:NO];
    self.bannerView = [[GADBannerView alloc]
                       initWithAdSize:kGADAdSizeSmartBannerPortrait];
    [self.view addSubview:self.bannerView];
    self.bannerView.adUnitID = ADMOBKEY;
    [self.bannerView setFrame:CGRectMake((self.view.frame.size.width-self.bannerView.frame.size.width)/2 ,self.view.frame.size.height-self.bannerView.frame.size.height, self.bannerView.frame.size.width,self.bannerView.frame.size.height)];
    GADRequest *request = [GADRequest request];
    
    self.bannerView.rootViewController = self.navigationController;
    
    [self.bannerView loadRequest:request];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.view bringSubviewToFront:self.bannerView];
    GADRequest *request = [GADRequest request];
    
    self.bannerView.rootViewController = self.navigationController;
    
    [self.bannerView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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
