//
//  FavoritesTableViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/16/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "FavoritesTableViewController.h"
#import "FavoritesCell.h"
#import "ProfileViewController.h"

@interface FavoritesTableViewController ()

@end

@implementation FavoritesTableViewController

@synthesize names = _names;
@synthesize addresses = _addresses;
@synthesize profile = _profile;
@synthesize profileObject = _profileObject;

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
    static NSString *CellIdentifier = @"FavoritesCell";
    FavoritesCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    
    cell.nameLabel.text = _names[row];
    cell.addressLabel.text = self.addresses[row];
    
    return cell;
    
    
}

/*- (void)setEditing:(BOOL)flag animated:(BOOL)animated
 {
 [super setEditing:flag animated:animated];
 if (flag == YES){
 self.editButtonItem.
 
 }
 else {
 // Save the changes if needed and change the views to noneditable.
 }
 }*/


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
                              initWithName:@"Rutgers Prep School"
                              andAddress:@"1345 Easton Ave Somerset NJ 08873"
                              andPhoneNumber:@"7325455600"
                              andType:@"Education"
                              andCountry:@"USA"
                              andRegion:@"North America"
                              andGoal:@"Education Outreach"
                              andEmail:@"rps@gmail.com"
                              andUrl:@"www.rutgersprep.org"];
        
        self.profile.theProfile = self.profileObject;
        
        //NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        //int row = [myIndexPath row];
    }
}



- (IBAction)editButton:(UIBarButtonItem *)sender
{
    
}
@end
