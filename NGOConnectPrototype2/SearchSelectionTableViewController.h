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
@property (nonatomic, strong) NSArray *selected;
@property (nonatomic, strong) NSString *orgtype;
@property (nonatomic, strong) NSString *georScope;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, strong) NSString *countries;
@property (nonatomic, strong) NSString *mdgs;
@property (nonatomic, strong) NSString *FoA;
@property (nonatomic, strong) NSString *AreaExpertise;
@property (nonatomic, strong) NSString *accreditations;
@property (nonatomic, strong) NSString *consultstat;
@property (nonatomic, strong) NSArray *objects;
@property (nonatomic, strong) NSMutableArray* arrayOfCells;


@end
