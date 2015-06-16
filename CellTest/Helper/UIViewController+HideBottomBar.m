//
//  UIViewController+HideBottomBar.m
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import "UIViewController+HideBottomBar.h"

@implementation UIViewController (HideBottomBar)

- (void)setupHideBottomBar {
  if (self.navigationController) {
    self.navigationController.delegate = self;
  }
}

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated {
  if (viewController.hidesBottomBarWhenPushed) {
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
  } else {
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
  }
}

@end
