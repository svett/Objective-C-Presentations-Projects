//
//  main.m
//  NSStringCombining
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *make = @"Ferrari";
        NSString *model = @"458 Spider";
        NSString *car = [make stringByAppendingString:model];
        NSLog(@"%@", car);        // Ferrari458 Spider
        car = [make stringByAppendingFormat:@" %@", model];
        NSLog(@"%@", car);        // Ferrari 458 Spider (note the space)
        
    }
    return 0;
}

