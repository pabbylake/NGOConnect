//
//  AdvancedSearchTableCell.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 11/4/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import "AdvancedSearchTableCell.h"


@implementation AdvancedSearchTableCell
@synthesize categoryLabel = _categoryLabel;

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
