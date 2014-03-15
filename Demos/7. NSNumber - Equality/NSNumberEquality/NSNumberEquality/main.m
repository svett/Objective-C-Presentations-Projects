//
//  main.m
//  NSNumberEquality
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *anInt = @27;
        NSNumber *sameInt = @27U;
        // Pointer comparison (fails)
        if (anInt == sameInt) {
            NSLog(@"They are the same object");
        }
        // Value comparison (succeeds)
        if ([anInt isEqualToNumber:sameInt]) {
            NSLog(@"They are the same value");
        }
    }
    return 0;
}

