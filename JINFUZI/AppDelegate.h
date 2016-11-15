//
//  AppDelegate.h
//  JINFUZI
//
//  Created by 李鹏辉 on 2016/11/15.
//  Copyright © 2016年 company. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LeftSlideViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LeftSlideViewController *LeftSlideVC;

@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

