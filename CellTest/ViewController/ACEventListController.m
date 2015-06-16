//
//  ACEventViewController.m
//  CellTest
//
//  Created by Gulakya Young on 15/6/16.
//  Copyright (c) 2015年 Gulakya Young. All rights reserved.
//

#import "ACEventListController.h"
#import "ACArrayDataSource.h"
#import "ACArrayDataSource+CollectionView.h"

#import "ACEventCell.h"
#import "UICollectionView+ARDynamicCacheHeightLayoutCell.h"

#import <KRLCollectionViewGridLayout.h>
#import <Masonry.h>

static NSString *const kEventCellIdentifier = @"ACEventListCell";

@interface ACEventListController () <UICollectionViewDelegate>

@property(strong, nonatomic) ACArrayDataSource *eventDataSource;

@end

@implementation ACEventListController

#pragma mark - Lifecycle

- (void)loadView {
  [super loadView];

  [self.view addSubview:self.listView];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self _configureListView];
  [self _fetchData];

  self.listView.dataSource = self.eventDataSource;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - Private Methods

- (void)_configureListView {
  __weak typeof(self) weakSelf = self;

  [self.listView mas_makeConstraints:^(MASConstraintMaker *maker) {
    maker.edges.equalTo(weakSelf.view);
  }];

  [self.listView registerNib:[ACEventCell nib]
  forCellWithReuseIdentifier:kEventCellIdentifier];
}

- (void)_fetchData {
  NSArray *items = @[
                     [UIColor grayColor],
                     [UIColor redColor],
                     [UIColor orangeColor],
                     [UIColor purpleColor],
                     [UIColor yellowColor],
                     [UIColor greenColor]
                     ];

  self.eventDataSource =
  [[ACArrayDataSource alloc] initWithItems:items
                            cellIdentifier:kEventCellIdentifier
                        configureCellBlock:^(ACEventCell *cell, id item) {
                          [cell configureWithItem:item];
                        }];
}

#pragma mark - Getter

- (UICollectionView *)listView {
  if (_listView) {
    return _listView;
  }

  KRLCollectionViewGridLayout *layout;
  layout = [[KRLCollectionViewGridLayout alloc] init];

  // 每一列展示的cell的数量
  layout.numberOfItemsPerLine = 1;

  // cell的宽高比
  layout.aspectRatio = 3;

  _listView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                 collectionViewLayout:layout];

  _listView.backgroundColor = [UIColor whiteColor];
  _listView.delegate = self;

  return _listView;
}

@end
