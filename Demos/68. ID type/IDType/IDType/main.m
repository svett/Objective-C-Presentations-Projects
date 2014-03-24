//
//  main.m
//  IDType
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        id mysteryObject = @"An NSString object";
        NSLog(@"%@", [mysteryObject description]);
        mysteryObject = @{@"model": @"Ford", @"year": @1967};
        NSLog(@"%@", [mysteryObject description]);
    }
    return 0;
}

