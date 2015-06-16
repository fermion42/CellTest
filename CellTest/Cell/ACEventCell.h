//
//  ACEventCell.h
//  CellTest
//
//  Created by Gulakya Young on 15/6/16.
//  Copyright (c) 2015年 Gulakya Young. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACEventCell : UICollectionViewCell

+ (UINib *)nib;

- (void)configureWithItem:(id)item;

@property(weak, nonatomic) IBOutlet UIImageView *imageView;

@end
