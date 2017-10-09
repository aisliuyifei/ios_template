//
//  SCContentViewController.m
//  template
//
//  Created by wupeng on 04/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "SCContentViewController.h"

@interface SCContentViewController ()

@end

@implementation SCContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:THEME_COLOR];

    float topHeight = isPad ? 80 : (SCREEN_HEIGHT > 320 ? 60 : 40);
    float badgeWidth = self.view.frame.size.height/4;
    // ADD LEFT BAR badge
    
    badgeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wise.png"]];
    badgeView.frame = CGRectMake(0,0,0,0);
    [self.view addSubview:badgeView];
    [badgeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(20);
        make.width.equalTo(@(badgeWidth));
        make.height.equalTo(@(badgeWidth*973.0/865));
        make.centerY.equalTo(self.view);
        
    }];
    
    // ADD LEFT BAR UPPline
    UIView *lefTopLine = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 0, 0))];
    [lefTopLine setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:lefTopLine];
    [lefTopLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@0);
        make.centerX.equalTo(badgeView);
        make.width.equalTo(@4);
        make.bottom.equalTo(badgeView.mas_top);
    }];
    // ADD LEFT BAR DOWNline
    UIView *lefDownLine = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 0, 0))];
    [lefDownLine setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:lefDownLine];
    [lefDownLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(badgeView.mas_bottom);
        make.centerX.equalTo(badgeView);
        make.width.equalTo(@4);
        make.height.equalTo(lefTopLine.mas_height);
    }];
    // ADD TOP LINE
    topLine = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 0, 0))];
    [topLine setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:topLine];
    [topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topHeight));
        make.centerX.equalTo(self.view);
        make.width.equalTo(@(self.view.frame.size.width));
        make.height.equalTo(@3);
    }];
    
    // ADD BACK BUTTON
    UIButton * buttonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonBack setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
    [buttonBack addTarget:self action:@selector(buttonBackClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonBack];
    
    [buttonBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@((badgeWidth/2+20-topHeight)/2));
        make.top.equalTo(@0);
        make.width.equalTo(@(topHeight));
        make.height.equalTo(@(topHeight));
    }];
    // ADD TITLE LABEL
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [titleLabel setText:self.title];
    [self.view addSubview:titleLabel];
    [titleLabel setFont:SCBoldFontSize(FONT_SIZE_LARGE)];
    [titleLabel setTextColor:[UIColor whiteColor]];
    [titleLabel setTextAlignment:NSTextAlignmentCenter];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lefTopLine.mas_right);
        make.top.equalTo(@0);
        make.right.equalTo(self.view.mas_right);
        make.height.equalTo(@(topHeight));
    }];
    
    // ADD MAINBOX
//    mainBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
//    [self.view addSubview:mainBox];
//    [mainBox setBackgroundColor:[UIColor redColor]];
//    [mainBox mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(badgeView.mas_right);
//        make.top.equalTo(topLine.mas_bottom).with.offset(20);
//        make.right.equalTo(self.view.mas_right).with.offset(-20);
//        make.bottom.equalTo(self.view.mas_bottom).with.offset(-20);
//    }];
    

    
}

-(void)buttonBackClicked:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
