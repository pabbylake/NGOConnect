//
//  SearchResultsTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/2/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileViewController.h"
#import "NGOProfile.h"

@interface SearchResultsTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *names;
@property (nonatomic,strong) NSArray *addresses;
@property (nonatomic, strong) ProfileViewController *profile;
@property (nonatomic, strong) NGOProfile* profileObject;
@end
