//
//  main.m
//  NSMutableSetOperations
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                                @"Mitsubishi", @"Toyota", nil];
        NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
        NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                     @"Alfa Romeo", nil];
        
        NSMutableSet *result = [NSMutableSet setWithCapacity:5];
        // Union
        [result setSet:johnsFavoriteMakes];
        [result unionSet:marysFavoriteMakes];
        NSLog(@"Either John's or Mary's favorites: %@", result);
        // Intersection
        [result setSet:johnsFavoriteMakes];
        [result intersectSet:japaneseMakes];
        NSLog(@"John's favorite Japanese makes: %@", result);
        // Relative Complement
        [result setSet:japaneseMakes];
        [result minusSet:johnsFavoriteMakes];
        NSLog(@"Japanese makes that are not John's favorites: %@",
              result);
    }
    return 0;
}

