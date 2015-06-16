//
//  UIViewController+HideBottomBar.h
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RDVTabBarController.h"

@interface UIViewController (HideBottomBar) <UINavigationControllerDelegate>

- (void)setupHideBottomBar;

@end
