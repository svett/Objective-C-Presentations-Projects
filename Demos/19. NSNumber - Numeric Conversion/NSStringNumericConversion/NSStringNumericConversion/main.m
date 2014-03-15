//
//  main.m
//  NSStringNumericConversion
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *year = @"2012";
        BOOL asBool = [year boolValue];
        int asInt = [year intValue];
        NSInteger asInteger = [year integerValue];
        long long asLongLong = [year longLongValue];
        float asFloat = [year floatValue];
        double asDouble = [year doubleValue];
    }
    return 0;
}

