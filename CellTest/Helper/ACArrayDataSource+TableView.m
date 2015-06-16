//
//  ACArrayDataSource+TableView.m
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import "ACArrayDataSource+TableView.h"

@implementation ACArrayDataSource (TableView)

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell =
  [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                  forIndexPath:indexPath];
  
  id item = [self itemAtIndexPath:indexPath];
  self.configureCellBlack(cell, item);
  
  return cell;
}

@end
