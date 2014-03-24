//
//  main.m
//  NSDictionarySorting
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
        NSArray *sortedKeys = [prices keysSortedByValueUsingComparator:
                               ^NSComparisonResult(id obj1, id obj2) {
                                   return [obj2 compare:obj1];
                               }];
        NSLog(@"%@", sortedKeys);
    }
    return 0;
}

