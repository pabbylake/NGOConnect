//
//  NGOMapAnnotation.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/28/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NGOMapAnnotation : NSObject <MKAnnotation>


@property (nonatomic, strong) NSString *address;
@property (nonatomic) CLLocationCoordinate2D coordinate;
@end
