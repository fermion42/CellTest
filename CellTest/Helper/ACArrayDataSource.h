//
//  ACArrayDataSource.h
//  iAcro
//
//  Created by Yang Han on 15/6/10.
//  Copyright (c) 2015年 Ace Gear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^ConfigureCellBlock)(id cell, id item);

@interface ACArrayDataSource : NSObject

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           configureCellBlock:(ConfigureCellBlock)configureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@property(strong, nonatomic) NSArray *items;
@property(copy, nonatomic) NSString *cellIdentifier;
@property(copy, nonatomic) ConfigureCellBlock configureCellBlack;

@end
