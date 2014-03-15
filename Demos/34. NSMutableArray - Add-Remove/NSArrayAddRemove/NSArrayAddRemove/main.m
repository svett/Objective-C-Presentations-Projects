//
//  main.m
//  NSArrayAddRemove
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *brokenCars = [NSMutableArray arrayWithObjects:
                                      @"Audi A6", @"BMW Z3",
                                      @"Audi Quattro", @"Audi TT", nil];
        [brokenCars addObject:@"BMW F25"];
        NSLog(@"%@", brokenCars);       // BMW F25 added to end
        [brokenCars removeLastObject];
        NSLog(@"%@", brokenCars);       // BMW F25 removed from end
        
        // Add BMW F25 to front
        [brokenCars insertObject:@"BMW F25" atIndex:0];
        // Remove BMW F25 from front
        [brokenCars removeObjectAtIndex:0];
        // Remove Audi Quattro
        [brokenCars removeObject:@"Audi Quattro"];
        
        // Change second item to Audi Q5
        [brokenCars replaceObjectAtIndex:1 withObject:@"Audi Q5"];
    }
    return 0;
}

