//
//  RecentsTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/7/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileViewController.h"
#import "NGOProfile.h"

@interface RecentsTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *names;
@property (nonatomic,strong) NSArray *addresses;
@property (nonatomic, strong) ProfileViewController *profile;
@property (nonatomic, strong) NGOProfile* profileObject;

@end
