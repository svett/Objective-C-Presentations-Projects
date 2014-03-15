//
//  main.m
//  NSNumberConversion
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *anInt = [NSNumber numberWithInt:42];
        float asFloat = [anInt floatValue];
        NSLog(@"%.2f", asFloat);
        NSString *asString = [anInt stringValue];
        NSLog(@"%@", asString);
    }
    
    return 0;
}

