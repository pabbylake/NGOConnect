//
//  NGOMoreInfoControllerViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 4/22/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NGOMoreInfoControllerViewController : UIViewController
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *url;
@property (weak, nonatomic) IBOutlet UIWebView *web;

@end
