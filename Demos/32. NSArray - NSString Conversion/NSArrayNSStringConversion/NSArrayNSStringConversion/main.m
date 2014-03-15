//
//  main.m
//  NSArrayNSStringConversion
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *ukMakes = @[@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley"];
        NSLog(@"%@", [ukMakes componentsJoinedByString:@", "]);
    }
    return 0;
}

