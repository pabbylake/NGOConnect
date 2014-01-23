//
//  SearchSelectionTableViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 1/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "SearchSelectionTableViewController.h"
#import "SearchSelectionCell.h"

@interface SearchSelectionTableViewController ()

@end

@implementation SearchSelectionTableViewController

@synthesize oType = _oType;
@synthesize mDG = _mDG;
@synthesize country = _country;
@synthesize fOA = _fOA;
@synthesize geoScope = _geoScope;
@synthesize accreditation = _accreditation;
@synthesize cStatus = _cStatus;
@synthesize category=_category;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    if((_category = @"oType"))
    {
        self.selected = [NSArray arrayWithObjects:@"Academics", @"Association", @"Disability, Development and Rights Organizations", @"Cooperative", @"Foundation", @"Indigenous Peoples Organizations", @"Institution", @"Inter-Governmental Organization", @"Local Government", @"Media", @"Non-Governmental Organization", @"Open-Ended Working Group on Ageing", @"Others", @"Private Sector", @"Trade Union", nil];
        //NSLog(self.oType);
    }
    else if((_category = @"mDG"))
    {
        self.selected = [NSArray arrayWithObjects:@"Eradicate Extreme Poverty and Hunger", @"Achieve Universal Primary Education", @"Combat HIV/AIDS, Malaria, and Other Diseases", @"Develop Globl Partnership For Development", @"Ensure Environmental Sustainability", @"Improve Maternal Health", @"Promote Gender Equality and Empower Women", @"Reduce Child Mortality", nil];
    }
    else if((_category = @"country"))
    {
        
    }

    else if((_category = @"fOA"))
    {
        
    }

    else if((_category = @"geoScope"))
    {
        self.selected = [NSArray arrayWithObjects:@"International", @"Regional", @"National",@"Local", nil];
    }

    else if((_category = @"accreditation"))
    {
       self.selected = [NSArray arrayWithObjects:@"DPI", @"ECOSOC", @"Other", nil];
    }

    else if((_category = @"cStatus"))
    {
        self.selected = [NSArray arrayWithObjects:@"General", @"Special", @"Roster", nil];
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.selected.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SearchSelectionCell";
    SearchSelectionCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    cell.optionLabel.text = self.selected[row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



// In a story board-based application, you will often want to do a little preparation before navigation


@end
