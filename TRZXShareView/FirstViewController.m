//
//  FirstViewController.m
//  TRZXShareView
//
//  Created by N年後 on 2017/2/17.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "FirstViewController.h"
#import "TRZXShareView.h"

@interface FirstViewController ()
- (IBAction)shareAction:(id)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)shareAction:(id)sender {


    __weak typeof(self) weakSelf = self;

    // 创建代表每个按钮的模型

    TRZXShareItem *itemA = [TRZXShareItem itemWithTitle:@"发送给好友"
                                                   icon:@"Action_Friends"
                                                handler:^{ [weakSelf itemAction:@"点击了发送给好友"]; }];

    TRZXShareItem *itemB = [TRZXShareItem itemWithTitle:@"分享到投融圈"
                                                   icon:@"Action_Melting"
                                                handler:^{ [weakSelf itemAction:@"点击了分享到投融圈"]; }];


    TRZXShareItem *item0 = [TRZXShareItem itemWithTitle:@"发送给朋友"
                                                   icon:@"Action_Share"
                                                handler:^{ [weakSelf itemAction:@"点击了发送给朋友"]; }];

    TRZXShareItem *item1 = [TRZXShareItem itemWithTitle:@"分享到朋友圈"
                                                   icon:@"Action_Moments"
                                                handler:^{ [weakSelf itemAction:@"点击了分享到朋友圈"]; }];

    TRZXShareItem *item2 = [TRZXShareItem itemWithTitle:@"收藏"
                                                   icon:@"Action_MyFavAdd"
                                                handler:^{ [weakSelf itemAction:@"点击了收藏"]; }];

    TRZXShareItem *item3 = [TRZXShareItem itemWithTitle:@"QQ空间"
                                                   icon:@"Action_qzone"
                                                handler:^{ [weakSelf itemAction:@"点击了QQ空间"]; }];

    TRZXShareItem *item4 = [TRZXShareItem itemWithTitle:@"QQ"
                                                   icon:@"Action_QQ"
                                                handler:^{ [weakSelf itemAction:@"点击了QQ"]; }];

    TRZXShareItem *item5 = [TRZXShareItem itemWithTitle:@"Facebook"
                                                   icon:@"Action_facebook"
                                                handler:^{ [weakSelf itemAction:@"点击了Facebook"]; }];

    TRZXShareItem *item6 = [TRZXShareItem itemWithTitle:@"查看公众号"
                                                   icon:@"Action_Verified"
                                                handler:^{ [weakSelf itemAction:@"点击了查看公众号"]; }];

    TRZXShareItem *item7 = [TRZXShareItem itemWithTitle:@"复制链接"
                                                   icon:@"Action_Copy"
                                                handler:^{ [weakSelf itemAction:@"点击了复制链接"]; }];

    TRZXShareItem *item8 = [TRZXShareItem itemWithTitle:@"调整字体"
                                                   icon:@"Action_Font"
                                                handler:^{ [weakSelf itemAction:@"点击了调整字体"]; }];

    TRZXShareItem *item9 = [TRZXShareItem itemWithTitle:@"刷新"
                                                   icon:@"Action_Refresh"
                                                handler:^{ [weakSelf itemAction:@"点击了刷新"]; }];





    NSArray *shareItemsArray = @[itemA,itemB,item0, item1, item2, item3, item4, item5];
    NSArray *functionItemsArray = @[item6, item7, item8, item9];

    // 创建shareView
    TRZXShareView *shareView = [TRZXShareView shareViewWithShareItems:shareItemsArray
                                                        functionItems:functionItemsArray];
    // 弹出shareView
    [shareView show];
    
}

- (void)itemAction:(NSString *)title
{
    NSLog(@"%@", title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
