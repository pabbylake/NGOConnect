//
//  SearchCagetoriesViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchSelectionTableViewController.h"
#import "FOATableViewController.h"

@interface SearchCagetoriesViewController : UIViewController

@property(nonatomic, strong) FOATableViewController *dest;
@property (nonatomic, strong) SearchSelectionTableViewController *options;

@property (nonatomic, strong) NSString *orgtype;
@property (nonatomic, strong) NSString *georScope;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, strong) NSString *countries;
@property (nonatomic, strong) NSString *mdgs;
@property (nonatomic, strong) NSString *AreaExpertise;
@property (nonatomic, strong) NSString *accreditations;
@property (nonatomic, strong) NSString *consultstat;
@property (nonatomic, strong) NSString *catIdent;

@property (nonatomic, strong) NSString *category;



@end
