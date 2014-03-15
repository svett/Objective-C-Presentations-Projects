//
//  main.m
//  NSMutableStringExpanding
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableString *car = [NSMutableString stringWithCapacity:20];
        NSString *model = @"458 Spider";
        
        [car setString:@"Ferrari"];
        [car appendString:model];
        NSLog(@"%@", car);
        
        [car setString:@"Ferrari"];
        [car appendFormat:@" %@", model];
        NSLog(@"%@", car);
        
        [car setString:@"Ferrari Spider"];
        [car insertString:@"458 " atIndex:8];
        NSLog(@"%@", car);
    }
    return 0;
}

