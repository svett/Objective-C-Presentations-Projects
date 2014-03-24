//
//  main.m
//  NSSetMembership
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *selectedMakes = [NSSet setWithObjects:@"Maserati",
                                @"Porsche", nil];
        // BOOL checking
        if ([selectedMakes containsObject:@"Maserati"]) {
            NSLog(@"The user seems to like expensive cars");
        }
        // nil checking
        NSString *result = [selectedMakes member:@"Maserati"];
        if (result != nil) {
            NSLog(@"%@ is one of the selected makes", result);
        }
    }
    return 0;
}

