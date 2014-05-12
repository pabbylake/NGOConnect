//
//  FOATableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 2/9/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FOA2TableTableViewController.h"

@interface FOATableViewController : UITableViewController
@property(strong,nonatomic)NSArray *selected;
@property(strong,nonatomic)FOA2TableTableViewController *options;
@end
