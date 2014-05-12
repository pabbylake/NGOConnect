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
- (IBAction)oTypeButton:(id)sender;
- (IBAction)mDGButton:(id)sender;
- (IBAction)languagesButton:(id)sender;
- (IBAction)fOAButton:(id)sender;
- (IBAction)geoScopeButton:(id)sender;
- (IBAction)accreditationButton:(id)sender;
- (IBAction)cStatusButton:(id)sender;

- (IBAction)searchButton:(id)sender;
@property(nonatomic, strong) SearchSelectionTableViewController *options;
@property(nonatomic, strong) FOATableViewController *dest;

@property (nonatomic, strong) NSString *catIdent;

@end
