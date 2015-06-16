//
//  ACArrayDataSource+CollectionView.m
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import "ACArrayDataSource+CollectionView.h"

@implementation ACArrayDataSource (CollectionView)

#pragma mark - Collection DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
  return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewCell *cell =
  [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier
                                            forIndexPath:indexPath];
  
  id item = [self itemAtIndexPath:indexPath];
  self.configureCellBlack(cell, item);
  
  return cell;
}

@end
