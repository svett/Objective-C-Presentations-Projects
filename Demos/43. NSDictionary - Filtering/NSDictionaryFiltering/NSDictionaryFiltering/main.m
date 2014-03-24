//
//  main.m
//  NSDictionaryFiltering
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDictionary *prices = @{
                                 @"Mercedes-Benz SLK250" : [NSDecimalNumber decimalNumberWithString:@"42900.00"],
                                 @"Mercedes-Benz E350" : [NSDecimalNumber decimalNumberWithString:@"51000.00"],
                                 @"BMW M3 Coupe" : [NSDecimalNumber decimalNumberWithString:@"62000.00"],
                                 @"BMW X6" : [NSDecimalNumber decimalNumberWithString:@"55015.00"]
                                 };
        NSDecimalNumber *maximumPrice = [NSDecimalNumber decimalNumberWithString:@"50000.00"];
        NSSet *under50k = [prices keysOfEntriesPassingTest:
                           ^BOOL(id key, id obj, BOOL *stop) {
                               if ([obj compare:maximumPrice] == NSOrderedAscending) {
                                   return YES;
                               } else {
                                   return NO;
                               }
                           }];
        NSLog(@"%@", under50k);
    }
    return 0;
}

