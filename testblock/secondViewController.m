//
//  secondViewController.m
//  testblock
//
//  Created by mac on 15/6/5.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
 
    [super viewDidLoad];
      self.view.backgroundColor = [UIColor whiteColor];
    self.title  = @"block+代理";
    UITextField *inputtext = [UITextField new];
    inputtext.frame = CGRectMake(0, 0, 200, 40);
    inputtext.center = self.view.center;
    inputtext.borderStyle = UITextBorderStyleRoundedRect;
    self.inputtext = inputtext;
    [self.view addSubview:inputtext];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [but addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    but.backgroundColor = [UIColor grayColor];
    [but setTitle:@"block" forState:UIControlStateNormal];
    but.frame = CGRectMake(50, 100, 100, 40);
    but.layer.cornerRadius = 5;
    [self.view addSubview:but];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.backgroundColor = [UIColor grayColor];
    [but2 setTitle:@"代理" forState:UIControlStateNormal];
    but2.layer.cornerRadius=5;
    [but2 addTarget:self action:@selector(btnclick2) forControlEvents:UIControlEventTouchUpInside];
    but2.frame = CGRectMake(155, 100, 100, 40);
    [self.view addSubview:but2];
    
    
}
-(void)btnclick
{
    if (_reblock!=nil) {
         
        self.reblock(self.inputtext.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)btnclick2
{
    if ([self.delegate respondsToSelector:@selector(returnData:)]) {
        [self.delegate returnData:self];
    }
    [self.navigationController popViewControllerAnimated:YES];
}


@end
