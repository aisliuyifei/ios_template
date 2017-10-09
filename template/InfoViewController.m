//
//  InfoViewController.m
//  template
//
//  Created by wupeng on 04/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    self.title = @"关于";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 0, 0 )];
    [textView setEditable:NO];
    [textView setScrollEnabled:YES];
    [textView setText:@"本套APP共计12册，理想的学习量是每个月学习1册，每天花上15分钟，共计1年学完，不仅学习压力不大，而且可以借用此举培养孩子“定时定量”的学习习惯。\n     APP参考了百花学习塾的丛书12册，分为六大部分组成：自然测量、空间认识、数学逻辑、图形、语言逻辑、其他（推理、记忆、常识等），按从易到难的顺序构成。无论何时开始学习，建议从第一册开始，循序渐进。\n     我们不推荐纯以iPad作为练习的唯一形式，希望家长在指导时，不要过分关注孩子会不会做题，当孩子不明白时，可以先把题目放一放，让孩子先玩一玩类似的实物再做。\n     家长在指导时，有任何问题，可加官方QQ群：xxxxx交流。\n     体验学习的快乐，树立学习信心，形成初步的学习能力和学习习惯，习题设计非常有趣，能够激发儿童天生的求知欲和好奇心，儿童都很喜欢做。\n     我们专注于培养孩子的思维训练，在充分汲取脑科学，认知心理学和教育学的最新研究成果基础上，我们对上海知名小学录取考试进行调查走访，这套APP基本符合其出题范围，所以我们相信这套APP对希望参加各地知名小学入学考试的儿童会有很大的帮助。"];
    [self.view addSubview:textView];
    [textView setTextColor:[UIColor whiteColor]];
    [textView setBackgroundColor:[UIColor clearColor]];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(badgeView.mas_right);
        make.top.equalTo(topLine.mas_bottom).with.offset(20);
        make.right.equalTo(self.view.mas_right).with.offset(-20);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-20);
    }];
    [textView setFont:SCFontSize(FONT_SIZE_SMALL)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
