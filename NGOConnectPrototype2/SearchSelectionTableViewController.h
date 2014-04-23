//
//  SearchSelectionTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchSelectionTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *oType;
@property (nonatomic, strong) NSArray *mDG;
@property (nonatomic, strong) NSArray *country;
@property (nonatomic, strong) NSArray *fOA;
@property (nonatomic, strong) NSArray *geoScope;
@property (nonatomic, strong) NSArray *accreditation;
@property (nonatomic, strong) NSArray *cStatus;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSArray *selected;
@end
