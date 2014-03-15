//
//  main.m
//  NSNumberComparision
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *anInt = @27;
        NSNumber *anotherInt = @42;
        NSComparisonResult result = [anInt compare:anotherInt];
        if (result == NSOrderedAscending) {
            NSLog(@"27 < 42");
        } else if (result == NSOrderedSame) {
            NSLog(@"27 == 42");
        } else if (result == NSOrderedDescending) {
            NSLog(@"27 > 42");
        }
    }
    return 0;
}

