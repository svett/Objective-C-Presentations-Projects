//
//  main.m
//  NSNumberLiterals
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *aBool = @NO;
        NSNumber *aChar = @'z';
        NSNumber *anInt = @2147483647;
        NSNumber *aUInt = @4294967295U;
        NSNumber *aLong = @9223372036854775807L;
        NSNumber *aFloat = @26.99F;
        NSNumber *aDouble = @26.99;
        
        double x = 24.0;
        NSNumber *result = @(x * .15);
        NSLog(@"%.2f", [result doubleValue]);
        
    }
    return 0;
}

