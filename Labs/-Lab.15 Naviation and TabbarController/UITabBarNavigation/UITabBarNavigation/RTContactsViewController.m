//
//  RTContactsViewController.m
//  UITabBarNavigation
//
//  Created by Svetlin Ralchev on 4/13/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "RTContactsViewController.h"

@interface RTContactsViewController ()

@end

@implementation RTContactsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Contacts";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
