//
//  NearMeViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 11/4/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "NearMeViewController.h"
#define METER_MILE 1609.344

@interface NearMeViewController ()

@end

@implementation NearMeViewController
@synthesize map = _map;

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
    
    
    _map.showsUserLocation = YES;
    
    MKUserLocation *userLocation = _map.userLocation;
    
    MKCoordinateRegion region =
    MKCoordinateRegionMakeWithDistance (userLocation.location.coordinate,500,500);
    [_map setRegion:region animated:NO];
    
    //Simulated annotations on the map
    CLLocationCoordinate2D poi1Coord , poi2Coord , poi3Coord , poi4Coord;
    //poi1 coordinates
    poi1Coord.latitude = 37.78754;
    poi1Coord.longitude = -122.40718;
    //poi2 coordinates
    poi2Coord.latitude = 37.78615;
    poi2Coord.longitude = -122.41040;
    //poi3 coordinates
    poi3Coord.latitude = 37.78472;
    poi3Coord.longitude = -122.40516;
    //poi4 coordinates
    poi4Coord.latitude = 37.78866;
    poi4Coord.longitude = -122.40623;
    
    MKPointAnnotation *poi1 = [[MKPointAnnotation alloc] init];
    MKPointAnnotation *poi2 = [[MKPointAnnotation alloc] init];
    MKPointAnnotation *poi3 = [[MKPointAnnotation alloc] init];
    MKPointAnnotation *poi4 = [[MKPointAnnotation alloc] init];
    
    
    poi1.coordinate = poi1Coord;
    poi2.coordinate = poi2Coord;
    poi3.coordinate = poi3Coord;
    poi4.coordinate = poi4Coord;
    
    poi1.title = @"McDonald's";
    poi1.subtitle = @"Best burgers in town";
    poi2.title = @"Apple store";
    poi2.subtitle = @"Iphone on sales..";
    poi3.title = @"Microsoft";
    poi3.subtitle = @"Microsoft's headquarters";
    poi4.title = @"Post office";
    poi4.subtitle = @"You got mail!";
    
    [_map addAnnotation:poi1];
    [_map addAnnotation:poi2];
    [_map addAnnotation:poi3];
    [_map addAnnotation:poi4];
    
   // [self.map viewForAnnotation:(id<poi1>)];
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation
{
    if ([[annotation title] isEqualToString:@"Current Location"]) {
        return nil;
    }
    
    MKAnnotationView *annView = [[MKAnnotationView alloc ] initWithAnnotation:annotation reuseIdentifier:@"currentloc"];
    if ([[annotation title] isEqualToString:@"McDonald's"])
        annView.image = [ UIImage imageNamed:@"mcdonalds.png" ];
    else if ([[annotation title] isEqualToString:@"Apple store"])
        annView.image = [ UIImage imageNamed:@"applestore.png" ];
    else
        annView.image = [ UIImage imageNamed:@"marker.png" ];
    
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [infoButton addTarget:self action:@selector(showDetailsView)
         forControlEvents:UIControlEventTouchUpInside];
    annView.rightCalloutAccessoryView = infoButton;
    annView.canShowCallout = YES;
    return annView;
}
-(void)viewWillAppear:(BOOL)animated
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 51.5259;
    zoomLocation.longitude =  -0.1113;
    
    
    MKCoordinateRegion viewRegion =
    MKCoordinateRegionMakeWithDistance(zoomLocation, 4*4000, 4*4000);
    
    [self.map setRegion:viewRegion animated:YES];
    
    self.map.showsUserLocation = YES;
    
    [self.map setShowsUserLocation:YES];
    
    
    //make the marker
    MKPointAnnotation * marker = [[MKPointAnnotation alloc] init];
    //set the coodinate
    marker.coordinate = zoomLocation;
    marker.title = @"Amnesty International";
    marker.subtitle = @"1 Easton Street London WC1X 0DW United Kingdom of Great Britain and Northern Ireland";
    
    //add the marker
    [self.map addAnnotation:marker];
    //make the marker
    MKPointAnnotation *marker2 = [[MKPointAnnotation alloc] init];
    zoomLocation.latitude = 51.5482;
    zoomLocation.longitude =  -0.2018;
    //set the coodinate
    marker2.coordinate = zoomLocation;
    marker2.title = @"Anglican Consultative Council";
    marker2.subtitle = @"16 Tavistock Crescent Westbourne Park, London W11 1AP United Kingdom of Great Britain and Northern Ireland";
    
    //make the marker
    MKPointAnnotation *marker3 = [[MKPointAnnotation alloc] init];
    zoomLocation.latitude = 51.5491;
    zoomLocation.longitude =  -0.0727;
    //set the coodinate
    marker3.coordinate = zoomLocation;
    marker3.title = @"Acronym Institute for Disarmament Diplomacy, The";
    marker3.subtitle = @"24, Colvestone Crescent London England E8 2LH United Kingdom";
    
    
    [self.map addAnnotation:marker2];
    [self.map addAnnotation:marker3];
    
    //Getting user's current location
    CLLocationCoordinate2D userCoord;
    
    userCoord.latitude = self.map.userLocation.coordinate.latitude;
    userCoord.longitude = self.map.userLocation.coordinate.longitude;
    
    //setting user's current location
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showDetailsView
{
    
}

@end
