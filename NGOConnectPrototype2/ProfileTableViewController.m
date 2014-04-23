//
//  ProfileTableViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 2/8/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "ProfileTableViewController.h"
#import "ProfileCell.h"

@interface ProfileTableViewController ()

@end

@implementation ProfileTableViewController

@synthesize theProfile = _theProfile;
@synthesize test=_test;
@synthesize test2=_test2;
@synthesize array=_array;
@synthesize moreinfo=_moreinfo;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{ NSLog(@"%@", self.theProfile.name);
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     //self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
}
-(void) viewWillAppear:(BOOL)animated
{
    _test2=self.theProfile.name;
    [_test addObject:_test2];
    _test2=self.theProfile.type;
    [_test addObject:_test2];
    _test2=self.theProfile.address;
    [_test addObject:_test2];
    _test2=self.theProfile.country;
    [_test addObject:_test2];
    _test2=self.theProfile.region;
    [_test addObject:_test2];
    _test2=self.theProfile.goal;
    [_test addObject:_test2];
    _test2=self.theProfile.phoneNumber;
    [_test addObject:_test2];
    _test2=self.theProfile.email;
    [_test addObject:_test2];
    _test2=self.theProfile.url;
    [_test addObject:_test2];
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
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ProfileCell";
    ProfileCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    
    cell.genericTVLabel.text = _array[row];
  
    return cell;
}

- (BOOL)validatePhoneNumber:(NSString *)PhoneStr
{
    
    [PhoneStr stringByReplacingOccurrencesOfString:@"-" withString:@""];
    [PhoneStr stringByReplacingOccurrencesOfString:@"+" withString:@""];
    
    @try
    {
        int value = [PhoneStr intValue];
        
        value = value + 2;
        return YES;
        
    }
    @catch(NSException *e)
    {
        return NO;
    }
    
    
    
    
    return NO;
}





- (BOOL)validateEmail:(NSString *)emailStr
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailStr];
}

- (BOOL)validateUrl:(NSString *)candidate
{
    NSString *urlRegEx =
    @"(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+";
    NSPredicate *urlTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", urlRegEx];
    return [urlTest evaluateWithObject:candidate];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{if([[segue identifier] isEqualToString:(@"MoreInfo")])
{ _moreinfo=[[NGOMoreInfoControllerViewController alloc]init];
    self.moreinfo =[segue destinationViewController];
    [self.moreinfo prepareForSegue:segue sender:sender];
    NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
    int row= (int)[myIndexPath row];
    // self.moreinfo.text=_test[row];
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if([self validateEmail:_test[row]])
    {
        NSString *email= @"lake.rutgersprep.org";
        self.moreinfo.email=email;
    }
    else if([self validateUrl:_test[3]])
    {
        NSString *urlAddress = @"http://www.rutgersprep.org"; //url address
        self.moreinfo.url=urlAddress;
        
    }
    else if([self validatePhoneNumber:_test[row]])
        
    { //NSString *temp=_test[row];
        NSString *phoneNumber = @"telprompt://7328533680";
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
    }
    
}
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

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
