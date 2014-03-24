//
//  main.m
//  NSCountedSet
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSCountedSet *inventory = [NSCountedSet setWithCapacity:5];
        [inventory addObject:@"Honda Accord"];
        [inventory addObject:@"Honda Accord"];
        [inventory addObject:@"Nissan Altima"];
        NSLog(@"There are %li Accords in stock and %li Altima",
              [inventory countForObject:@"Honda Accord"],
              [inventory countForObject:@"Nissan Altima"]);
    }
    return 0;
}

