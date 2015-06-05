//
//  secondViewController.h
//  testblock
//
//  Created by mac on 15/6/5.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class secondViewController;
typedef void (^reBlock)(NSString *retext);

@protocol secondViewControllerDelegate <NSObject>

-(void)returnData:(secondViewController*)sc;

@end

@interface secondViewController : UIViewController
@property (nonatomic,copy)reBlock reblock;
@property (nonatomic, strong) UITextField *inputtext;

@property (nonatomic,weak) id<secondViewControllerDelegate> delegate;

@end
