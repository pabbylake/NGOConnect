//
//  RecentsTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/7/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileTableViewController.h"
#import "NGOProfile.h"

@interface RecentsTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *names;
@property (nonatomic,strong) NSArray *addresses;
@property (nonatomic, strong) ProfileTableViewController *profile;
@property (nonatomic, strong) NGOProfile* profileObject;

@property (nonatomic,strong) NSMutableArray *array;

@end
