//
//  main.m
//  NSStringEnumerating
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *make = @"Porsche";
        for (int i=0; i<[make length]; i++) {
            unichar letter = [make characterAtIndex:i];
            NSLog(@"%d: %hu", i, letter);
        }
    }
    return 0;
}

