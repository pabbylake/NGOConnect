//
//  CustomCalloutSampleViewController.m
//  CustomCalloutSample
//
//  Created by tochi on 11/05/17.
//  Copyright 2011 aguuu,Inc. All rights reserved.
//

#import "NGOCustomMapViewController.h"


@interface NGOCustomMapViewController (Private)
- (void)releaseOutlets;
@end

@implementation NGOCustomMapViewController
@synthesize mapView=mapView_;

@synthesize profile = _profile;
@synthesize profileObject = _profileObject;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mapView_ = [[MKMapView alloc] init];
    
    mapView_.delegate = self;
    
    mapView_.frame    = self.view.bounds;
    
    [self.view addSubview:mapView_];
    
    
    // Add annotations on the MapView.
    
    PinAnnotation *pinAnnotation;
    
    CLLocationCoordinate2D coordinate;
    
    coordinate.latitude  = 34.655146;
    
    coordinate.longitude = 133.919502;
    
    
    
    pinAnnotation = [[PinAnnotation alloc] init];
    
    //pinAnnotation.title      = @"Amnesty International Amnesty International Amnesty International Amnesty International";
    
    pinAnnotation.coordinate = coordinate;
    
    [mapView_ addAnnotation:pinAnnotation];
    

    mapView_.region = MKCoordinateRegionMakeWithDistance(coordinate, 100000, 100000);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [self releaseOutlets];//find out about releaseOutlets
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - MapView delegate.
- (MKAnnotationView *)mapView:(MKMapView *)mapView
            viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKAnnotationView *annotationView;
    NSString *identifier;
    
    if ([annotation isKindOfClass:[PinAnnotation class]]) {
        // Pin annotation.
        identifier = @"Pin";
        annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        
    } else if ([annotation isKindOfClass:[CalloutAnnotation class]])
    {
        
        // Callout annotation.
        identifier = @"Callout";
        
        /*
        annotationView = (CalloutAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        
        
        CalloutAnnotation *calloutAnnotation = (CalloutAnnotation *)annotation;
        
        ((CalloutAnnotationView *)annotationView).title = calloutAnnotation.title;
        ((CalloutAnnotationView *)annotationView).delegate = self;
        [annotationView setNeedsDisplay];
        
        // Move the display position of MapView.
        [UIView animateWithDuration:0.5f
                         animations:^(void) {
                             mapView.centerCoordinate = calloutAnnotation.coordinate;
                         }];
    }//end if
    
    annotationView.annotation = annotation;
    
    return annotationView;*/
        
        CGSize            size = CGSizeMake(150.0, 60.0);
        MKAnnotationView *view = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        view.frame             = CGRectMake(50.0, 50.0, 200, size.height);
        view.backgroundColor   = [UIColor whiteColor];
        UIButton *button       = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        view.image=[UIImage imageNamed:@"bluebuttonbackground.jpg"];
        button.frame           = CGRectMake(5.0, 5.0, 190, size.height - 10.0);
        [button setTitle:@"Amnesty International" forState:UIControlStateNormal];
        [button setTitleColor: [UIColor whiteColor] forState:0];
        [button addTarget:self action:@selector(calloutButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button];
        view.canShowCallout    = NO;
        view.centerOffset      = CGPointMake(0.0, -70.0);
        return view;
    }
    return nil;
        
        
}

- (void)mapView:(MKMapView *)mapView
didSelectAnnotationView:(MKAnnotationView *)view
{
    if ([view.annotation isKindOfClass:[PinAnnotation class]]) {
        // Selected the pin annotation.
        CalloutAnnotation *calloutAnnotation = [[CalloutAnnotation alloc] init];
        
        PinAnnotation *pinAnnotation = ((PinAnnotation *)view.annotation);
        calloutAnnotation.title      = pinAnnotation.title;
        calloutAnnotation.coordinate = pinAnnotation.coordinate;
        pinAnnotation.calloutAnnotation = calloutAnnotation;
        
        [mapView addAnnotation:calloutAnnotation];
    }
}

- (void)mapView:(MKMapView *)mapView
didDeselectAnnotationView:(MKAnnotationView *)view
{
    if ([view.annotation isKindOfClass:[PinAnnotation class]])
    {
        PinAnnotation *pin = ((PinAnnotation *)view.annotation);
        
        
        [mapView removeAnnotation:pin.calloutAnnotation];
        
        //pinAnnotation.calloutAnnotation = nil;
    }  
}

#pragma mark - CalloutAnnotationViewDelegate
- (void)calloutButtonClicked:(NSString *)title
{
   // NSLog(@"Hello");
    //[self prepareForSegue:Main.storyboard sender:(id)];
   

}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{ if([[segue identifier] isEqualToString:(@"ProfileViewController")])
{
    self.profile =[segue destinationViewController];
    [self.profile prepareForSegue:segue sender:sender];
    
    //Need to get the search results from a datasource object in order to
    //create an NGOProfile object
    
    //Rutgers Prep is hard-coded for UI testing
    self.profileObject = [[NGOProfile alloc]
                          initWithName:@"Rutgers Prep School"
                          andAddress:@"1345 Easton Ave Somerset NJ 08873"
                          andPhoneNumber:@"7325455600"
                          andType:@"Education"
                          andCountry:@"USA"
                          andRegion:@"North America"
                          andGoal:@"Education Outreach"
                          andEmail:@"rps@gmail.com"
                          andUrl:@"www.rutgersprep.org"];
    
    self.profile.theProfile = self.profileObject;
    
    //NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
    //int row = [myIndexPath row];
} }
@end
