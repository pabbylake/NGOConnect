//
//  FOA2Cell.m
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 2/9/14.
//  Copyright (c) 2014 Max Mendelson. All rights reserved.
//

#import "FOA2Cell.h"

@implementation FOA2Cell

@synthesize optionLabel = _optionLabel;

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
