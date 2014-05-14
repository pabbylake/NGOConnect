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
{_orgtype=@"&organizationType=";
    _georScope=@"&geographicScope=";
    _language=@"&language=";
    _countries=@"&country=";
    _mdgs=@"&mdgs=";
    _AreaExpertise=@"&areaExpertise=";
    _accreditations=@"&accreditation=";
    _consultstat=@"&consultativeStatus=";
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
        self.options.category=@"";
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
        self.options.selected = [NSArray arrayWithObjects:
                                 @"Afghanistan",@"Albania",@"Algeria",@"Andorra",@" Angola",@"Antigua and Barbuda", @"Argentina",@"Armenia",@"Australia",@"Austria",@"Azerbaijan",@"Bahamas",@"Bahrain",@"Bangladesh",@"Barbados",@"Belarus",@"Belgium",@"Belize",@"Benin",@"Bhutan",@"Bolivia (Plurinational State of)",@"Bosnia and Herzegovina",@"Botswana",@"Brazil",@"Brunei Darussalam",@"Bulgaria",@"Burkina Faso",@"Burundi",@"Cambodia",@"Cameroon",@"Canada",@"Cape Verde",@"Central African Republic",@"Chad",@"Chile",@"China",@"Colombia",@"Comoros",@"Congo",@"Costa Rica",@"Country Not Available",@"Croatia",@"Cuba",@"Cyprus",@"Czech Republic",@"Côte D’lvoire",@"Democratic People’s Republic of Korea",@"Democratic Republic of the Congo",@"Denmark",@"Djibouti",@"Dominica",@"Dominican Republic",@"Ecuador",@"Egypt",@"El Salvador",@"Equatorial Guinea",@"Eritrea",@"Estonia",@"Ethiopia",@"Fiji",@"Finland",@"France",@"Gabon",@"Gambia",@"Georgia",@"Germany",@"Ghana",@"Greece",@"Grenada",@"Guatemala",@"Guinea",@"Guinea Bissau",@"Guyana",@"Haiti",@"Holy See",@"Honduras",@"Hungary",@"Iceland",@"India",@"Indonesia",@"Iran (Islamic Republic of)",@"Iraq",@"Ireland",@"Israel",@"Italy",@"Jamaica",@"Jammu and Kashmir",@"Japan",@"Jordan",@"Kazakhstan",@"Kenya",@"Kiribati",@"Kuwait",@"Kyrgyzstan",@"Lao People's Democratic Republic",@"Latvia",@"Lebanon",@"Lesotho",@"Liberia",@"Libya",@"Liechtenstein",@"Lithuania",@"Luxembourg",@"Madagascar",@"Malawi",@"Malaysia",@"Maldives",@"Mali",@"Malta",@"Marshall Islands",@"Mauritania",@"Mauritius",@"Mexico",@"Micronesia (Federated States of)",@"Monaco",@"Mongolia",@"Montenegro",@"Morocco",@"Mozambique",@"Myanmar",@"Namibia",@"Nauru",@"Nepal",@"Netherlands",@"New Zealand",@"Nicaragua",@"Niger",@"Nigeria",@"Norway",@"Occupied Syrian Golan",@"Oman",@"Pakistan",@"Palau",@"Panama",@"Papua New Guinea",@"Paraguay",@"Peru",@"Philippines",@"Poland",@"Portugal",@"Qatar",@"Republic of Korea",@"Republic of Moldova",@"Romania",@"Russian Federation",@"Rwanda",@"Saint Kitts and Nevis",@"Saint Lucia",@"Saint Vincent and the Grenadines",@"Samoa",@"San Marino",@"Sao Tome and Principe",@"Saudi Arabia",@"Senegal",@"Serbia",@"Seychelles",@"Sierra Leone",@"Singapore",@"Slovakia",@"Slovenia",@"Solomon Islands",@"Somalia",@"South Africa",@"South Sudan",@"Spain",@"Sri Lanka",@"State of Palestine",@"Sudan",@"Suriname",@"Swaziland",@"Sweden",@"Switzerland",@"Syrian Arab Republic",@"Tajikistan",@"Thailand",@"The former Yugoslav Republic of Macedonia",@"Timor-Leste",@"Togo",@"Tonga",@"Trinidad and Tobago",@"Tunisia",@"Turkey",@"Turkmenistan",@"Tuvalu",@"Uganda",@"Ukraine",@"United Arab Emirates",@"United Kingdom of Great Britain and Northern Ireland",@"United Republic of Tanzania",@"United States of America",@"Uruguay",@"Uzbekistan",@"Vanuatu",@"Venezuela (Bolivarian Republic of)",@"Viet Nam",@"Yemen",@"Zambia",@"Zimbabwe",nil];
                                 
        
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
