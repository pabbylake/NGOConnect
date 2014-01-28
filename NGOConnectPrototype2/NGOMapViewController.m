//
//  NGOMapViewController.m
//  NGOConnectPrototype2
//
//  Created by user on 1/14/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "NGOMapViewController.h"
#import "NGOAnnotationView.h"
#import "NGOMapAnnotation.h"

@interface NGOMapViewController ()

@end

@implementation NGOMapViewController
@synthesize testname=_testname;
@synthesize testaddress=_testaddress;
@synthesize mapview=_mapview;
@synthesize testcoordinate=_testcoordinate;

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addPins
{
    _testaddress= @"11 Wilson Rd, Somerset";
    _testname=@"Wot";
    _testcoordinate.latitude=24.5;
    _testcoordinate.longitude=25;
     NGOMapAnnotation *annotation = [[NGOMapAnnotation alloc] init];
    annotation.title=_testname;
    annotation.address=_testaddress;
    
}

@end
