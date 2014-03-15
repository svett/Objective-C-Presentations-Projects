//
//  main.m
//  NSNumberFormatting
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *aUChar = [NSNumber numberWithUnsignedChar:255];
        NSNumber *anInt = [NSNumber numberWithInt:2147483647];
        NSNumber *aFloat = [NSNumber numberWithFloat:26.99f];
        NSLog(@"%@", aUChar);
        NSLog(@"%@", anInt);
        NSLog(@"%@", aFloat);
    }
    return 0;
}

