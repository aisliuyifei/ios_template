//
//  ViewController.m
//  template
//
//  Created by wupeng on 02/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    [self.view setBackgroundColor:THEME_COLOR];
    float paddingX = isPad ? 50 : 20;
    float paddingY = isPad ? 50 : 20;
    // ADD LEFT BAR badge
    
    UIImageView * badgeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wise.png"]];
    badgeView.frame = CGRectMake(0,0,0,0);
    [self.view addSubview:badgeView];
    [badgeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(20);
        make.width.equalTo(@(self.view.frame.size.height/4));
        make.height.equalTo(@(self.view.frame.size.height/4*973.0/865));
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
    // ADD BOTTOM LINE
    UIView *bottomLine = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 0, 0))];
    [bottomLine setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:bottomLine];
    [bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(self.view.frame.size.height-50));
        make.centerX.equalTo(self.view);
        make.width.equalTo(@(self.view.frame.size.width));
        make.height.equalTo(@3);
    }];
    
    // ADD BOTTOM WEBSITE
    UILabel *lableWebSite = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [lableWebSite setTextColor:[UIColor whiteColor]];
    [lableWebSite setUserInteractionEnabled:YES];
    [lableWebSite setBackgroundColor:[UIColor clearColor]];
    [lableWebSite setTextAlignment:NSTextAlignmentRight];
    [lableWebSite setText:@"http://apps.diosapp.com.cn"];
    [self.view addSubview:lableWebSite];
    [lableWebSite setFont:SCFontSize(FONT_SIZE_SMALL)];
    [lableWebSite mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(self.view.frame.size.height-40));
        make.centerX.equalTo(self.view);
        make.width.equalTo(@(self.view.frame.size.width-40));
        make.height.equalTo(@30);
    }];
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(webSiteTaped:)];
    [lableWebSite addGestureRecognizer:tapRecognizer];

    //ADD RIGHT MAIN BOX CONTAINER
    UIView *mainBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    // UNCOMMENT THIS LINE iF NEED TO DEBUG
    // [mainBox setBackgroundColor:[UIColor greenColor]];
    
    [self.view addSubview:mainBox];
    [mainBox mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(isPad ? 80 : 0));
        make.left.equalTo(badgeView.mas_right);
        make.right.equalTo(bottomLine.mas_right);
        make.bottom.equalTo(bottomLine.mas_top);
        
        make.width.equalTo(@(self.view.frame.size.width));
        make.height.equalTo(@3);
    }];
    
    //ADD TITLE
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [labelTitle setTextColor:[UIColor whiteColor]];
    [labelTitle setUserInteractionEnabled:NO];
    [labelTitle setBackgroundColor:[UIColor clearColor]];
    [labelTitle setTextAlignment:NSTextAlignmentRight];
    [labelTitle setText:@"幼升小天天练（1）"];
    [mainBox addSubview:labelTitle];
    [labelTitle setFont:SCBoldFontSize(FONT_SIZE_HUGE)];
    [labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(FONT_SIZE_HUGE));
        make.width.equalTo(@(self.view.frame.size.width-40));
        make.height.equalTo(@(FONT_SIZE_HUGE*1.2));
        make.right.equalTo(mainBox.mas_right).with.offset(-paddingX);
    }];
    
    // ADD SUBTITLE
    UILabel *labelSubTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [labelSubTitle setBackgroundColor:[UIColor whiteColor]];
    [labelSubTitle setTextColor:THEME_COLOR];
    [labelSubTitle setText:@"幼小衔接针对性训练，共12册"];
    [labelSubTitle setTextAlignment:NSTextAlignmentCenter];
    [labelSubTitle setFont:SCFontSize(FONT_SIZE_MEDIUM)];
    [mainBox addSubview:labelSubTitle];
    [labelSubTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(labelTitle.mas_bottom).with.offset(20);
        make.right.equalTo(labelTitle.mas_right);
        make.width.equalTo(@(FONT_SIZE_HUGE * labelTitle.text.length));
        make.height.equalTo(@(FONT_SIZE_HUGE));
    }];
    [[labelSubTitle layer] setCornerRadius:FONT_SIZE_HUGE*0.5];
    [[labelSubTitle layer] setMasksToBounds:YES];
    [labelSubTitle setClipsToBounds:YES];

    //ADD HOME_HAND_PNG
    UIImageView *imageHand = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"home_hand.png"]];
    [self.view addSubview:imageHand];
    
    [imageHand mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(bottomLine.mas_top);
        make.left.equalTo(lefTopLine.mas_right);
        make.width.equalTo(@(self.view.frame.size.width/4));
        make.height.equalTo(@(self.view.frame.size.width/4*638/838));
    }];
    
    //ADD BUTTONS
    UIButton *buttonLevels,*buttonReports,*buttonMoreApps,*buttonInfo;
    buttonLevels = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonReports = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonMoreApps = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonInfo = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonLevels setImage:[UIImage imageNamed:@"icon1.png"] forState:UIControlStateNormal];
    [buttonReports setImage:[UIImage imageNamed:@"icon2.png"] forState:UIControlStateNormal];
    [buttonMoreApps setImage:[UIImage imageNamed:@"icon3.png"] forState:UIControlStateNormal];
    [buttonInfo setImage:[UIImage imageNamed:@"icon4.png"] forState:UIControlStateNormal];
    [buttonLevels addTarget:self action:@selector(buttonLevelsClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonReports addTarget:self action:@selector(buttonReportsClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonMoreApps addTarget:self action:@selector(buttonMoreAppsClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonInfo addTarget:self action:@selector(buttonInfoClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonLevels];
    [self.view addSubview:buttonReports];
    [self.view addSubview:buttonMoreApps];
    [self.view addSubview:buttonInfo];
    
   
    
    [buttonLevels mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.greaterThanOrEqualTo(imageHand.mas_right).with.offset(paddingX);        make.top.greaterThanOrEqualTo(labelSubTitle.mas_bottom).with.offset(paddingY);
        make.width.equalTo(buttonLevels.mas_height);
        make.right.equalTo(labelSubTitle.mas_centerX).with.offset(-paddingX/2);
    }];
    
    [buttonReports mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonLevels.mas_right).with.offset(paddingX);
        make.top.equalTo(buttonLevels.mas_top);
        make.width.equalTo(buttonLevels.mas_width);
        make.height.equalTo(buttonLevels.mas_height);
    }];
    
    [buttonMoreApps mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonLevels.mas_left);
        make.top.equalTo(buttonLevels.mas_bottom).with.offset(paddingY);
        make.width.equalTo(buttonLevels.mas_width);
        make.height.equalTo(buttonLevels.mas_height);
        make.bottom.lessThanOrEqualTo(bottomLine.mas_top).with.offset(-paddingY);
        
    }];
    
    [buttonInfo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(buttonReports.mas_left);
        make.top.equalTo(buttonMoreApps.mas_top);
        make.width.equalTo(buttonLevels.mas_width);
        make.height.equalTo(buttonLevels.mas_height);
    }];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonLevelsClicked:(id)sender{
    
    
}

- (void)buttonReportsClicked:(id)sender{
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"UserCenterViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)buttonMoreAppsClicked:(id)sender{
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"MoreAppViewController"];
    [self.navigationController pushViewController:controller animated:YES];
    
}

- (void)buttonInfoClicked:(id)sender{
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"InfoViewController"];
    [self.navigationController pushViewController:controller animated:YES];
    
}





- (void)webSiteTaped:(id)sender{
    NSLog(@"CLICKED");
}


@end
