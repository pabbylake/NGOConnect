//
//  SearchResultsCell.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 12/2/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "SearchResultsCell.h"

@implementation SearchResultsCell

@synthesize nameLabel = _nameLabel;
@synthesize addressLabel = _addressLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
