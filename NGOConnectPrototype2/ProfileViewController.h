//
//  ProfileViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/4/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//
/* These are the parameters that make up a basic NGO Profile
    
    name
    type
    address
    phoneNumber
    mailingAddress
    country
    region
    goal
    email
    url
 */

#import <UIKit/UIKit.h>
#import "NGOProfile.h"
#import "NGOMapAnnonation.h"

@interface ProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UILabel *regionLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextView*urlTextView;
@property (weak, nonatomic) IBOutlet UIButton *phoneNumberButton;
@property (weak, nonatomic) IBOutlet UIButton *emailButton;
@property (weak, nonatomic)NGOMapAnnonation *annotation;


- (IBAction)viewMap:(id)sender;

@property NGOProfile *theProfile;


@end
