//
//  NGOProfile.h
//  NGOConnectPrototype2
//
//  Created by lake on 12/6/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NGOProfile : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSString *goal;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *url;

-(NGOProfile*)initWithName:(NSString*) name
                andAddress:(NSString*) address
            andPhoneNumber:(NSString*) phoneNumber
                   andType:(NSString*) type
                andCountry:(NSString*) country
                 andRegion:(NSString*) region
                   andGoal:(NSString*) goal
                  andEmail:(NSString*) email
                    andUrl:(NSString*) url;



@end
