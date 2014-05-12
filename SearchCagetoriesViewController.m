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
    {self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
        self.options.selected = [NSArray arrayWithObjects:@"Academics", @"Association", @"Disability, Development and Rights Organizations", @"Cooperative", @"Foundation", @"Indigenous Peoples Organizations", @"Institution", @"Inter-Governmental Organization", @"Local Government", @"Media", @"Non-Governmental Organization", @"Open-Ended Working Group on Ageing", @"Others", @"Private Sector", @"Trade Union", nil];
    }
    else if([[segue identifier] isEqualToString:(@"mDG")])
    {
        self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
        self.options.selected = [NSArray arrayWithObjects:@"Eradicate Extreme Poverty and Hunger", @"Achieve Universal Primary Education", @"Combat HIV/AIDS, Malaria, and Other Diseases", @"Develop Globl Partnership For Development", @"Ensure Environmental Sustainability", @"Improve Maternal Health", @"Promote Gender Equality and Empower Women", @"Reduce Child Mortality", nil];
    }
    else if([[segue identifier] isEqualToString:(@"country")])
    { self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
      
    }
    else if([[segue identifier] isEqualToString:(@"geoScope")])
    { self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
        self.options.selected = [NSArray arrayWithObjects:@"International", @"Regional", @"National",@"Local", nil];
    }
    else if([[segue identifier] isEqualToString:(@"accreditation")])
    {self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
       self.options.selected = [NSArray arrayWithObjects:@"DPI", @"ECOSOC", @"Other", nil];
    }
    else if([[segue identifier] isEqualToString:(@"cStatus")])
    {self.options =[segue destinationViewController];
        [self.options prepareForSegue:segue sender:sender];
        self.options.selected = [NSArray arrayWithObjects:@"General", @"Special", @"Roster", nil];
    }
    else if([[segue identifier] isEqualToString:(@"FOA")])
    {self.dest =[segue destinationViewController];
        [self.dest prepareForSegue:segue sender:sender];
     self.dest.selected=[NSArray arrayWithObjects:@" Economic and Social",@"Financing for Development",@"Gender Issues and Advancement of Women",@"Population",@"Public Administration",@"Social Development",@"Statistics",@"Sustainable Development",@"Peace and Development in Africa",@"Conflict Resolution in Africa",@"NEPAD",nil];
    }
}
@end
