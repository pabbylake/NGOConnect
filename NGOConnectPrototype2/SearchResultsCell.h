//
//  SearchResultsCell.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/2/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchResultsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UIImageView *accreditationImage;

@end
