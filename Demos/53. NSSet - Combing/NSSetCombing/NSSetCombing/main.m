//
//  main.m
//  NSSetCombing
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *affordableMakes = [NSSet setWithObjects:@"Ford", @"Honda",
                                  @"Nissan", @"Toyota", nil];
        NSSet *fancyMakes = [NSSet setWithObjects:@"Ferrari", @"Maserati",
                             @"Porsche", nil];
        NSSet *allMakes = [affordableMakes setByAddingObjectsFromSet:fancyMakes];
        NSLog(@"%@", allMakes);
    }
    return 0;
}

