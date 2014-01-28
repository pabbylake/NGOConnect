//
//  NGOMapViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/28/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import "NGOMapAnnonation.h"

@interface NGOMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (nonatomic, strong) NSString *testaddress;
@property (nonatomic, strong) NSString *testname;

@property (nonatomic) CLLocationCoordinate2D testcoordinate;
@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@end

