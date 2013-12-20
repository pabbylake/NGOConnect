//
//  NGOProfile.m
//  NGOConnectPrototype2
//
//  Created by lake on 12/6/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "NGOProfile.h"

@implementation NGOProfile
@synthesize name=_name;
@synthesize address =_address;
@synthesize phoneNumber=_phoneNumber;
@synthesize type=_type;
@synthesize country=_country;
@synthesize region=_region;
@synthesize goal=_goal;
@synthesize email=_email;
@synthesize url=_url;

-(NGOProfile*)initWithName:(NSString*) name
                     andAddress:(NSString*) address
                 andPhoneNumber:(NSString*) phoneNumber
                        andType:(NSString*) type
                     andCountry:(NSString*) country
                      andRegion:(NSString*) region
                        andGoal:(NSString*) goal
                       andEmail:(NSString*) email
                         andUrl:(NSString*) url

{
    self = [super init]; //initialize the super class (Object)
    
    //Then initialize all of the instance variables by setting their properties
    if(self)
    {
        
        self.name = name;
        self.address = address;
        self.phoneNumber = phoneNumber;
        self.type = type;
        self.country = country;
        self.region = region;
        self.goal = goal;
        self.email = email;
        self.url = url;
    }
    
    return self;
    
    
}



@end
