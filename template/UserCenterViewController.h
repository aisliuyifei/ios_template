//
//  UserCenterViewController.h
//  template
//
//  Created by wupeng on 09/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "SCContentViewController.h"
#import "Cat.h"
#import "Question.h"
@interface UserCenterViewController : SCContentViewController<UITableViewDataSource,UITableViewDelegate>{
    IBOutlet UITableView *tableView;
}

@end
