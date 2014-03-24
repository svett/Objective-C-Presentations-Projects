//
//  main.m
//  NSSetFastEnumeration
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
        NSLog(@"The set has %li elements", [models count]);
        for (id item in models) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}

