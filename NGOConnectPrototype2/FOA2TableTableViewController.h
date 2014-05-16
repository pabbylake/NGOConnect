//
//  FOA2TableTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 5/12/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FOA2Cell.h"

@interface FOA2TableTableViewController : UITableViewController
@property(strong,nonatomic) NSMutableArray *selected;
@property (strong, nonatomic) NSString *caget;
@end
