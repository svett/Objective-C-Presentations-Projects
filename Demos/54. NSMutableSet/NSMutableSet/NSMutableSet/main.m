//
//  main.m
//  NSMutableSet
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableSet *brokenCars = [NSMutableSet setWithObjects:
                                    @"Honda Civic", @"Nissan Versa", nil];
        NSMutableSet *repairedCars = [NSMutableSet setWithCapacity:5];
        
        // "Fix" the Honda Civic
        [brokenCars removeObject:@"Honda Civic"];
        [repairedCars addObject:@"Honda Civic"];
        
        NSLog(@"Broken cars: %@", brokenCars);     // Nissan Versa
        NSLog(@"Repaired cars: %@", repairedCars); // Honda Civic
    }
    return 0;
}

