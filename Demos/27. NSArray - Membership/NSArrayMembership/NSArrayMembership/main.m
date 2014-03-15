//
//  main.m
//  NSArrayMembership
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
        // BOOL checking
        if ([germanMakes containsObject:@"BMW"]) {
            NSLog(@"BMW is a German auto maker");
        }
        // Index checking
        NSUInteger index = [germanMakes indexOfObject:@"BMW"];
        if (index == NSNotFound) {
            NSLog(@"Well that's not quite right...");
        } else {
            NSLog(@"BMW is a German auto maker and is at index %ld", index);
        }
    }
    return 0;
}

