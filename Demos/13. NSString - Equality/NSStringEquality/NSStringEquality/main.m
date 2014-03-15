//
//  main.m
//  NSStringEquality
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *car = @"Porsche Boxster";
        if ([car isEqualToString:@"Porsche Boxster"]) {
            NSLog(@"That car is a Porsche Boxster");
        }
        if ([car hasPrefix:@"Porsche"]) {
            NSLog(@"That car is a Porsche of some sort");
        }
        if ([car hasSuffix:@"Carrera"]) {
            // This won't execute
            NSLog(@"That car is a Carrera");
        }
    }
    return 0;
}

