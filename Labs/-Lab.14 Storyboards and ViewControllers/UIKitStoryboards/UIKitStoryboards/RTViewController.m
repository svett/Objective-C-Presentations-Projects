//
//  RTViewController.m
//  UIKitStoryboards
//
//  Created by Svetlin Ralchev on 4/13/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "RTViewController.h"

@interface RTViewController ()

@end

@implementation RTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"green"])
    {
        UIViewController *destinationController = segue.destinationViewController;
        destinationController.title = @"Green";
        destinationController.view.backgroundColor = [UIColor greenColor];
    }
}

- (UIStoryboardSegue*)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
{
    return [[UIStoryboardSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
}

- (UIViewController*)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender
{
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PalleteView"];
    return viewController;
}

- (IBAction)showBlue:(id)sender {
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PalleteView"];
    viewController.title = @"Blue";
    viewController.view.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end