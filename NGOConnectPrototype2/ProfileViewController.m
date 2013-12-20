//
//  ProfileViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/4/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize theProfile = _theProfile;
@synthesize nameLabel = _nameLabel;
@synthesize typeLabel = _typeLabel;
@synthesize addressLabel = _addressLabel;
@synthesize mailingAddressLabel = _mailingAddressLabel;
@synthesize countryLabel = _countryLabel;
@synthesize regionLabel = _regionLabel;
@synthesize goalLabel = _goalLabel;
@synthesize urlTextView = _urlTextView;
@synthesize phoneNumberButton = _phoneNumberButton;
@synthesize emailButton = _emailButton;
@synthesize coordinate =_coordinate;
@synthesize mPlacemark =_mPlacemark;

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
    [self createProfile];
    
}

-(void)createProfile
{
    self.nameLabel.text = self.theProfile.name;
    self.addressLabel.text = self.theProfile.address;
    self.typeLabel.text = self.theProfile.type;
    [self.phoneNumberButton setTitle:self.theProfile.phoneNumber forState:UIControlStateNormal];
    self.mailingAddressLabel.text = self.theProfile.mailingAddress;
    self.goalLabel.text = self.theProfile.goal;
    [self.emailButton setTitle:self.theProfile.email forState:UIControlStateNormal];
    self.urlTextView.text = self.theProfile.url;
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewMap:(id)sender {
    
    MKPlacemark *mPlacemark = [[[MKPlacemark alloc] initWithCoordinate:coordinate addressDictionary:nil] autorelease];
    [mapView addAnnotation:mPlacemark];
}
@end
