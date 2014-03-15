//
//  main.m
//  NSDecimalNumberArithmetic
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDecimalNumber *price1 = [NSDecimalNumber decimalNumberWithString:@"15.99"];
        NSDecimalNumber *price2 = [NSDecimalNumber decimalNumberWithString:@"29.99"];
        NSDecimalNumber *coupon = [NSDecimalNumber decimalNumberWithString:@"5.00"];
        NSDecimalNumber *discount = [NSDecimalNumber decimalNumberWithString:@".90"];
        NSDecimalNumber *numProducts = [NSDecimalNumber decimalNumberWithString:@"2.0"];
        
        NSDecimalNumber *subtotal = [price1 decimalNumberByAdding:price2];
        NSDecimalNumber *afterCoupon = [subtotal decimalNumberBySubtracting:coupon];
        NSDecimalNumber *afterDiscount = [afterCoupon decimalNumberByMultiplyingBy:discount];
        NSDecimalNumber *average = [afterDiscount decimalNumberByDividingBy:numProducts];
        NSDecimalNumber *averageSquared = [average decimalNumberByRaisingToPower:2];
        
        NSLog(@"Subtotal: %@", subtotal);                    // 45.98
        NSLog(@"After coupon: %@", afterCoupon);           // 40.98
        NSLog((@"After discount: %@"), afterDiscount);       // 36.882
        NSLog(@"Average price per product: %@", average);    // 18.441
        NSLog(@"Average price squared: %@", averageSquared); // 340.070481
        
    }
    return 0;
}

