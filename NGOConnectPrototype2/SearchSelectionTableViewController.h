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
@property (nonatomic, strong)NSString *category;
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


@end
