//
//  SearchSelectionTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchSelectionCell.h"


@interface SearchSelectionTableViewController : UITableViewController
@property(nonatomic,strong) NSString *category;
@property (nonatomic, strong) NSArray *selected;

@property (nonatomic, strong) NSArray *objects;
@property (nonatomic, strong) NSMutableArray* arrayOfCells;


@end
