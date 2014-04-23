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

<<<<<<< HEAD
@interface NGOMapViewController : : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (nonatomic, strong) NSString *testaddress;
@property (nonatomic, strong) NSString *testname;
=======
@interface NGOMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (nonatomic, strong) NSString *testaddress;
@property (nonatomic, strong) NSString *testname;

@property (nonatomic) CLLocationCoordinate2D testcoordinate;
@property (weak, nonatomic) IBOutlet MKMapView *mapview;

>>>>>>> 4f5283acd296154b1f73bc80d8d7aaef6a6ab039
@end

