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
@synthesize cagetory =_cagetory;
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
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
    //self.cagetory =[segue destinationViewController];
    //[self.cagetory prepareForSegue:segue sender:sender];
   // self.cagetory.category= self.catIdent;
    //self.cagetory.selected=[NSArray arrayWithObjects:@"General", @"Special", @"Roster", nil];
//}

- (IBAction)oTypeButton:(id)sender { self.catIdent = @"oType";
   
}

- (IBAction)mDGButton:(id)sender {self.catIdent = @"mDG";
}

- (IBAction)languagesButton:(id)sender { self.catIdent = @"languages";
}

- (IBAction)fOAButton:(id)sender { self.catIdent = @"fOA";
}

- (IBAction)geoScopeButton:(id)sender { self.catIdent = @"geoScope";
}

- (IBAction)accreditationButton:(id)sender { self.catIdent = @"accreditation";
}

- (IBAction)cStatusButton:(id)sender { self.catIdent = @"cStatus";
}

- (IBAction)searchButton:(id)sender {
}
@end
