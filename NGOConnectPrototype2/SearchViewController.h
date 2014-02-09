//
//  SearchViewController.h
//  NGOConnectPrototype2
//
//  Created by Max Mendelson on 11/4/13.
//  Copyright (c) 2013 Max Mendelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchField;
-(BOOL) textFieldShouldReturn:(UITextField *)textField;
@property (weak, nonatomic) IBOutlet UINavigationItem *SearchLogo;

@end
