//
//  UserCenterViewController.m
//  template
//
//  Created by wupeng on 09/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "UserCenterViewController.h"

@interface UserCenterViewController ()

@end

@implementation UserCenterViewController

- (void)viewDidLoad {
    self.title = @"数据中心";
    [super viewDidLoad];
    [tableView setDelegate:self];
    [tableView setDataSource:self];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return [[Cat all] count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return nil;
}


@end
