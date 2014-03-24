//
//  main.m
//  NSSetBlockEnumeration
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *models = [NSSet setWithObjects:@"Civic", @"Accord",
                         @"Odyssey", @"Pilot", @"Fit", nil];
        
        [models enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
            NSLog(@"Current item: %@", obj);
            if ([obj isEqualToString:@"Fit"]) {
                NSLog(@"I was looking for a Honda Fit, and I found it!");
                *stop = YES;    // Stop enumerating items
            }
        }];
    }
    return 0;
}

