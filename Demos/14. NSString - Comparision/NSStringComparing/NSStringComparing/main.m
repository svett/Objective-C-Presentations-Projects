//
//  main.m
//  NSStringComparing
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *car = @"Porsche Boxster";
        NSString *otherCar = @"Ferrari";
        NSComparisonResult result = [car compare:otherCar];
        if (result == NSOrderedAscending) {
            NSLog(@"The letter 'P' comes before 'F'");
        } else if (result == NSOrderedSame) {
            NSLog(@"We're comparing the same string");
        } else if (result == NSOrderedDescending) {
            NSLog(@"The letter 'P' comes after 'F'");
        }
    }
    return 0;
}

