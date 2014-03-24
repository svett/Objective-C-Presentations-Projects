//
//  main.m
//  NSSet
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *americanMakes = [NSSet setWithObjects:@"Chrysler", @"Ford",
                                @"General Motors", nil];
        NSLog(@"%@", americanMakes);
    }
    return 0;
}

