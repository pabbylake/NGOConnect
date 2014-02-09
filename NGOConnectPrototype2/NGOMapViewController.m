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
#define METER_MILE 1609.344

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
-(void)viewWillAppear:(BOOL)animated{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = -63.86;
    zoomLocation.longitude =  101.20;
    
    
    MKCoordinateRegion viewRegion =
    MKCoordinateRegionMakeWithDistance(zoomLocation, 0.9*METER_MILE, 0.9*METER_MILE);
    
    [self.mapview setRegion:viewRegion animated:YES];
    
    self.mapview.showsUserLocation = YES;
    
    [self.mapview setShowsUserLocation:YES];
    
    
    //make the marker
    MKPointAnnotation * marker = [[MKPointAnnotation alloc] init];
    //set the coodinate
    marker.coordinate = zoomLocation;
    marker.title = @"Amnesty International";
    marker.subtitle = @"1 Easton Street London WC1X 0DW United Kingdom of Great Britain and Northern Ireland";
    
    //add the marker
    [self.mapview addAnnotation:marker];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addPins
{
   }

@end
