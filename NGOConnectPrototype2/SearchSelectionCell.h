//
//  SearchSelectionCell.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchSelectionTableViewController.h"

@interface SearchSelectionCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *optionLabel;
@property (weak, nonatomic) IBOutlet UISwitch *onOffSwitch;
@end
