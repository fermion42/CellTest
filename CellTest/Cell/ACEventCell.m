//
//  ACEventCell.m
//  CellTest
//
//  Created by Gulakya Young on 15/6/16.
//  Copyright (c) 2015年 Gulakya Young. All rights reserved.
//

#import "ACEventCell.h"

@implementation ACEventCell

- (void)awakeFromNib {
  // Initialization code
}

- (void)configureWithItem:(id)item {
  UIColor *color = (UIColor *)item;
  self.imageView.backgroundColor = color;
}

+ (UINib *)nib {
  return [UINib nibWithNibName:@"ACEventCell" bundle:nil];
}

@end
