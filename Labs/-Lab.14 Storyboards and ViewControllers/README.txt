1. Create a a single-view iOS application
2. Embed the existing view controller in navigation controller
3. Place 3 buttons with the following names (Red, Green, Blue)
4. Add two more controllers with Storyboard ID "red" and "pallete". Change the background of the red controller to red.
5. Change the color of background color of first one to Red
6. By using ctr+mouse drag create a segue from Red button to Red Controller view.
7. By using ctr+mouse drag create a segue from Green button to Pallete view controller. Set the segue identifier to "green".
8. Override a prepareSegue method of main view controller. Then set for segue with identifier "green" the desitnation view controller's view.backgrounColor property to [UIColor greenColor].
9. Create an IBAction for Blue button. Then insaciate a pallete view controller by using the [self.storyboard instantiateViewControllerWithIdentifier: @"Pallete"] constructor.
10. Sets its background to [UIColor blueColor].
11. Show it on the screen by using  [self.navigationController pushViewController:viewController animated:YES];
