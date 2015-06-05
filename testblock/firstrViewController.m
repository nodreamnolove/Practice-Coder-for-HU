//
//  firstrViewController.m
//  testblock
//
//  Created by mac on 15/6/5.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "firstrViewController.h"
#import "secondViewController.h"

@interface firstrViewController ()<secondViewControllerDelegate>
@property (nonatomic,weak) UIButton * pushbutton;
@property (nonatomic,weak) UITextField * retext;
@end

@implementation firstrViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"block和代理传值演示";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pb = [UIButton buttonWithType:UIButtonTypeCustom];
    [pb setTitle:@"跳转" forState:UIControlStateNormal];
    pb.backgroundColor = [UIColor grayColor];
    pb.frame = CGRectMake(0, 0, 100, 30);
    pb.center = self.view.center;
    pb.layer.cornerRadius = 5.0;

    self.pushbutton = pb;
    [pb addTarget:self action:@selector(pushclick) forControlEvents:UIControlEventTouchUpInside];
    UITextField *retext = [UITextField new];
    
    retext.frame = CGRectMake(5, 5, 300, 40);
    retext.backgroundColor = [UIColor redColor];
    retext.placeholder = @"显示返回值";
    self.retext = retext;
    
    [self.view addSubview:pb];
    [self.view addSubview:retext];
 
    
}


-(void)pushclick
{
    //1.使用block + 2.使用代理
    secondViewController *svc = [secondViewController new];
        svc.reblock=^(NSString *str){
            _retext.text = str;
        };
    svc.delegate = self;
    [self.navigationController pushViewController:svc animated:YES];
}

-(void)returnData:(secondViewController *)sc
{
    self.retext.text = sc.inputtext.text;
}



@end
