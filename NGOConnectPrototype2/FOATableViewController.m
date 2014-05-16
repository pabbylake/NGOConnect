//
//  FOATableViewController.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 2/9/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "FOATableViewController.h"
#import "FieldOfActivityCell.h"

@interface FOATableViewController ()

@end

@implementation FOATableViewController
NSInteger currentCell = 0;
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Retu0rn the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.selected.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"FOACell";
    FieldOfActivityCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    cell.optionLabel.text = self.selected[row];
    // Configure the cell...
    
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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    currentCell = [indexPath row];
    
    
}

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:(@"FOA2")])
    {
    self.options =[segue destinationViewController];
    [self.options prepareForSegue:segue sender:sender];
        switch(currentCell){
    case 0: self.options.caget=@"Economic and Social";self.options.selected=[NSMutableArray arrayWithObjects:@"Aging", @"United Nations Reform", @"Violence", @"Disabled Persons", @"Refugees", @"Economics and Finance", @"Drug Control", @"International Law", @"Sports for Peace and Development", @"Religion", @"Law of the Sea and Antarctica", @"Intellectual Property", @"Extreme poverty", @"Sustainable Development", @"Food", @"Science and Technology", @"Values", @"Torture", @"Citizenship and Governance", @"Water", @"Safety", @"Justice", @"Environment", @"Family", @"Crime Prevention", @"Labour", @"Indigenous Peoples", @"Financing for Development", @"Criminal Justice", @"Governance", @"Habitat", @"Migration", @"Taxation Policy", @"Energy", @"Trade and Development", @"Micro-Credit", @"Humanitarian Affairs", @"Women", @"Population", @"Least Developed Countries", @"Culture", @"Business and Industry", @"Education", @"Statistics", @"Decolonization", @"Technical Cooperation", @"Private Sector", @"Volunteerism", @"Agriculture", @"Women/gender Equality", @"HIV/AIDS", @"Industrial Development", @"Disarmament", @"Outer Space", @"Social Development", @"Information", @"De-mining", @"International Security", @"Atomic Energy", @"Human Rights", @"Debt Relief", @"Youth", @"Peace and Security", @"New Global Institutions", @"Coorporate Accountability", @"United Nations Funding", @"Biodiversity", @"Climate Change", @"Development", @"Children", @"Media", @"Minority Rights",nil];
                break;
    case 1:self.options.caget=@"Financing for Development";self.options.selected=[NSMutableArray arrayWithObjects:@"International Trade as an engine for development", @"Mobilizing domestic financial resources for development", @"Increasing financial and technical cooperation for development", @"International Cooperation in Tax Matters", @"External debt", @"Addressing systemic issues", @"Mobilizing international resources for development",nil]; break;
    case 2:self.options.caget=@"Gender Issues and Advancement of Women";self.options.selected=[NSMutableArray arrayWithObjects:@"Women and poverty", @"Millennium Development Goals", @"Men and boys", @"Violence against women", @"Education and training of women", @"Women and armed conflict", @"Women and the environment", @"Women and the media", @"Women and HIV/AIDS", @"Trafficking in women and girls", @"Information and communication technologies", @"Women and health", @"Research", @"Service provision", @"Capacity building", @"The girl child", @"Women and the economy", @"Women and the media", @"Women in power and decision-making", @"Indigenous women", @"Institutional mechanisms for the advancement of women", @"Policy advice", @"Advocacy and outreach", @"Human rights of women",nil];break;
    case 3:self.options.caget=@"Population";self.options.selected=[NSMutableArray arrayWithObjects:@"Population distribution and internal migration", @"Population structure", @"Population growth", @"International migration", @"Reproduction, family formation and the status of women", @"Morbidity and mortality",nil];break;
    case 4:self.options.caget=@"Public Adminstartion";self.options.selected=[NSMutableArray arrayWithObjects:@"Governance and Public Administration", @"Public Financial Management", @"Public Service and Management Innovation", @"Knowledge Systems and E-government", @"Socio-Economic Governance and Management", @"Ethics, Transparency and Accountability",nil];break;
    case 5:self.options.caget=@"Social Development";self.options.selected=[NSMutableArray arrayWithObjects:@"Disabled persons", @"Aging", @"Technical cooperation", @"Youth", @"Information and Communications Technologies", @"Indigenous issues", @"Employment", @"Poverty", @"Conflict", @"Social policy", @"Cooperative",nil];break;
    case 6:self.options.caget=@"Statistics";self.options.selected=[NSMutableArray arrayWithObjects:@"Geographical names", @"Time-use statistics", @"Environmental Accounts", @"Disability Statistics", @"International Economic and Social Classifications", @"Population and housing censuses", @"Price and Quantity Statistics", @"Official statistics, principles and practices", @"National accounting", @"Development indicators", @"Statistical activities classification", @"Demographic and social surveys", @"Country or region codes", @"Poverty statistics", @"International Comparison Programme", @"Civil registration systems", @"Social Statistics and Social Monitoring", @"Statistics on international trade in services", @"Crime and criminal justice statistics", @"Services Statistics", @"Labour and Compensation", @"Household Statistics", @"Methodological publications in statistics", @"Informal Sector Statistics", @"International migration",nil];break;
    case 7:self.options.caget=@"Sustainable Development";self.options.selected=[NSMutableArray arrayWithObjects:@"Poverty", @"Partnerships", @"Finance", @"Means of Implementation (Trade, Finance, Technology, Tranfer, etc.)", @"Energy", @"Agriculture", @"Consumption and production patterns", @"Sustainable Tourism", @"Mining", @"Sustainable development in a globalizing world", @"Industrial development", @"Atmosphere", @"Education", @"International cooperation for an enabling environment", @"Land management", @"Protecting and managing the natural resources", @"Rural Development", @"Sanitation", @"Disaster management and vulnerability", @"Sustainable development of SIDS", @"Waste Management", @"Technology", @"Biodiversity", @"Transport", @"Mountains", @"Health", @"Science", @"Human settlements", @"Forests", @"Climate change", @"Toxic chemicals", @"Major Groups", @"Indicators", @"Integrated decision-making", @"International law", @"Biotechnology", @"Institutional arrangements", @"Marine Resources", @"Desertification and Drought", @"Demographics", @"Capacity-building", @"Trade and environment", @"Freshwater", @"Gender equality", @"Oceans and seas", @"Waste (solid)", @"Waste (radioactive)", @"Sustainable development for Africa", @"Information for decision-making and participation  ", @"Waste (hazardous)",nil];break;
    case 8:self.options.caget=@"Peace and Development in Africa";self.options.selected=[NSMutableArray arrayWithObjects:  @"Peace in Africa", @"Development in Africa",nil];break;
    case 9:self.options.caget=@"Conflict Resolution in Africa";self.options.selected=[NSMutableArray arrayWithObjects:@"Conflicts Resolution",nil];break;
    case 10:self.options.caget=@"NEPAD";self.options.selected=[NSMutableArray arrayWithObjects: @"Regional Integration and Infrastructure", @"Crosscutting issues (Gender and Capacity Development)", @"Climate Change and Natural Resource Management", @"Agriculture and Food Security", @"Human Development", @"Economic and Corporate Governance",nil];break;
        }
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



@end
