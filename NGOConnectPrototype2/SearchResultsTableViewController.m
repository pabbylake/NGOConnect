//
//  SearchResultsTableViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/2/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "SearchResultsTableViewController.h"
#import "SearchResultsCell.h"
#import "ProfileViewController.h"

@interface SearchResultsTableViewController ()

@end

@implementation SearchResultsTableViewController

@synthesize names = _names;
@synthesize addresses = _addresses;
@synthesize profile = _profile;
@synthesize profileObject = _profileObject;
@synthesize array=_array;
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
    self.names=@[@"African Centre for Technology Studies",
                 @"Action Group on Erosion, Technology and Concentration ETC Group"];
    
    self.addresses=@[@" St. George's House ,Parliament Road, P O Box 45917,Kenya",
                     @"180 Metcalfe Street, Suite 206, Ottawa, ON K2P 1P5,Canada"];
    
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
    return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SearchResultsCell";
    SearchResultsCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    
    cell.nameLabel.text = _names[row];
    cell.addressLabel.text = self.addresses[row];
   // cell.accreditationImage.image = [UIImage imageNamed:self.image[row]];
    
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


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
 if([[segue identifier] isEqualToString:(@"ProfileViewController")])
 {
     self.profile =[segue destinationViewController];
     [self.profile prepareForSegue:segue sender:sender];
     
     //Need to get the search results from a datasource object in order to
     //create an NGOProfile object
     
     //Rutgers Prep is hard-coded for UI testing
     self.profileObject = [[NGOProfile alloc]
                           initWithName:@"African Centre for Technology Studies"
                             andAddress:@"St. George's House ,Parliament Road, P O Box 45917,Kenya"
                           andPhoneNumber:@"7325455600"
                           andType:@"Education"
                           andCountry:@"Kenya"
                           andRegion:@"Africa"
                           andGoal:@"Education Outreach"
                           andEmail:@"test@gmail.com"
                           andUrl:@"www.test.org"];
     self.array=[[NSMutableArray alloc]init];

     self.profile.theProfile = self.profileObject;
     [self.array addObject:self.profileObject.name];
     
     [_array addObject:self.profileObject.address];
    [_array addObject:self.profileObject.country];
     [_array addObject:self.profileObject.url];
     [_array addObject:self.profileObject.phoneNumber];
     [_array addObject:self.profileObject.email];
     self.profile.array=self.array;

     //NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
     //int row = [myIndexPath row];
 }
}
@end
