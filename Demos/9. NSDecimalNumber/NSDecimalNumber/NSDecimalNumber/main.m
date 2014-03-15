//
//  main.m
//  NSDecimalNumber
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDecimalNumber *price;
        price = [NSDecimalNumber decimalNumberWithMantissa:1599
                                                  exponent:-2
                                                isNegative:NO];
        
        NSLog(@"Price $%@", price);
        price = [NSDecimalNumber decimalNumberWithString:@"15.99"];
        NSLog(@"Price $%@", price);
        
    }
    return 0;
}

