//
//  NGOMoreInfoControllerViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 4/22/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "NGOMoreInfoControllerViewController.h"

@interface NGOMoreInfoControllerViewController ()

@end

@implementation NGOMoreInfoControllerViewController
@synthesize web=_web;
@synthesize url=_url;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSURL* urladdress = [NSURL URLWithString:_url];
    NSLog(@"%@",self.url);
    NSURLRequest * requestObj = [NSURLRequest requestWithURL:urladdress];
    [self.web loadRequest:requestObj];
    
    

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
