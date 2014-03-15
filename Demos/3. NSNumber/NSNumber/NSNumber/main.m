//
//  main.m
//  NSNumber
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *aBool = [NSNumber numberWithBool:NO];
        NSNumber *aChar = [NSNumber numberWithChar:'z'];
        NSNumber *aUChar = [NSNumber numberWithUnsignedChar:255];
        NSNumber *aShort = [NSNumber numberWithShort:32767];
        NSNumber *aUShort = [NSNumber numberWithUnsignedShort:65535];
        NSNumber *anInt = [NSNumber numberWithInt:2147483647];
        NSNumber *aUInt = [NSNumber numberWithUnsignedInt:4294967295];
        NSNumber *aLong = [NSNumber numberWithLong:9223372036854775807];
        NSNumber *aULong = [NSNumber numberWithUnsignedLong:1844674407370955161];
        NSNumber *aFloat = [NSNumber numberWithFloat:26.99f];
        NSNumber *aDouble = [NSNumber numberWithDouble:26.99];
        
        NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
        NSLog(@"%c", [aChar charValue]);
        NSLog(@"%hhu", [aUChar unsignedCharValue]);
        NSLog(@"%hi", [aShort shortValue]);
        NSLog(@"%hu", [aUShort unsignedShortValue]);
        NSLog(@"%i", [anInt intValue]);
        NSLog(@"%u", [aUInt unsignedIntValue]);
        NSLog(@"%li", [aLong longValue]);
        NSLog(@"%lu", [aULong unsignedLongValue]);
        NSLog(@"%f", [aFloat floatValue]);
        NSLog(@"%f", [aDouble doubleValue]);
    }
    
    return 0;
}

