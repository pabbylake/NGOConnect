//
//  ProfileTableViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 2/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGOProfile.h"
#import "NGOMapAnnonation.h"
#import "NGOMoreInfoControllerViewController.h"
#import <MessageUI/MessageUI.h>

@interface ProfileTableViewController : UITableViewController<MFMailComposeViewControllerDelegate>
@property (nonatomic, strong) NGOProfile *theProfile;
@property (nonatomic, strong) NSMutableArray *test;
@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic,strong) NSString *test2;
@property (nonatomic,strong) NGOMoreInfoControllerViewController* moreinfo;
@end
