//
//  main.m
//  NSArraySorting
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *sortedMakes = [germanMakes sortedArrayUsingComparator:
                                ^NSComparisonResult(id obj1, id obj2) {
                                    if ([obj1 length] < [obj2 length]) {
                                        return NSOrderedAscending;
                                    } else if ([obj1 length] > [obj2 length]) {
                                        return NSOrderedDescending;
                                    } else {
                                        return NSOrderedSame;
                                    }
                                }];
        NSLog(@"%@", sortedMakes);
    }
    return 0;
}

