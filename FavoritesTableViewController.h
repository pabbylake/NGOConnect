//
//  FavoritesTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/16/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileTableViewController.h"
#import "NGOProfile.h"

@interface FavoritesTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *names;
@property (nonatomic,strong) NSArray *addresses;
@property (nonatomic,strong) NSMutableArray *array;
@property (nonatomic, strong) ProfileTableViewController *profile;
@property (nonatomic, strong) NGOProfile* profileObject;
- (IBAction)editButton:(UIBarButtonItem *)sender;

@end
