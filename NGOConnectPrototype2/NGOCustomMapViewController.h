//
//  NGOCustomMapViewController.h
//  NGOConnectPrototype2
//
//  Created by lake on 4/4/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "PinAnnotation.h"
#import "CalloutAnnotation.h"
#import "CalloutAnnotationView.h"
#import "ProfileViewController.h"
#import "NGOProfile.h"


@interface NGOCustomMapViewController : UIViewController<MKMapViewDelegate,CalloutAnnotationViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (nonatomic, strong) ProfileViewController *profile;
@property (nonatomic, strong) NGOProfile* profileObject;
@end
