//
//  SearchCagetoriesViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "SearchCagetoriesViewController.h"

@interface SearchCagetoriesViewController ()

@end

@implementation SearchCagetoriesViewController

@synthesize catIdent = _catIdent;
@synthesize options =_options;
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
    self.catIdent=@" ";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if([[segue identifier] isEqualToString:(@"oType")])
    {
    }
    else if([[segue identifier] isEqualToString:(@"mDG")])
    {
        
    }
    else if([[segue identifier] isEqualToString:(@"country")])
    {
        
    }
    else if([[segue identifier] isEqualToString:(@"geoScope")])
    {
        
    }
    else if([[segue identifier] isEqualToString:(@"accredation")])
    {
        
    }
    else if([[segue identifier] isEqualToString:(@"cStatus")])
    {
        
    }
}
@end
