//
//  ACArrayDataSource.m
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import "ACArrayDataSource.h"

@implementation ACArrayDataSource

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           configureCellBlock:(ConfigureCellBlock)configureCellBlock {
  if (!(self = [super init])) {
    return nil;
  }
  
  self.items = items;
  self.cellIdentifier = cellIdentifier;
  self.configureCellBlack = configureCellBlock;
  
  return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
  return self.items[(NSUInteger)indexPath.row];
}

@end
