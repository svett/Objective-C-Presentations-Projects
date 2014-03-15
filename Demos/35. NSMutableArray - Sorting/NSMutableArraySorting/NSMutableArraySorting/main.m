//
//  main.m
//  NSMutableArraySorting
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDictionary *car1 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Golf",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"18750.00"]
                               };
        NSDictionary *car2 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Eos",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"35820.00"]
                               };
        NSDictionary *car3 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A5",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSDictionary *car4 = @{
                               @"make": @"Volkswagen",
                               @"model": @"Jetta A4",
                               @"price": [NSDecimalNumber decimalNumberWithString:@"16675.00"]
                               };
        NSMutableArray *cars = [NSMutableArray arrayWithObjects:
                                car1, car2, car3, car4, nil];
        
        NSSortDescriptor *priceDescriptor = [NSSortDescriptor
                                             sortDescriptorWithKey:@"price"
                                             ascending:YES
                                             selector:@selector(compare:)];
        NSSortDescriptor *modelDescriptor = [NSSortDescriptor
                                             sortDescriptorWithKey:@"model"
                                             ascending:YES
                                             selector:@selector(caseInsensitiveCompare:)];
        
        NSArray *descriptors = @[priceDescriptor, modelDescriptor];
        [cars sortUsingDescriptors:descriptors];
        NSLog(@"%@", cars);    // car4, car3, car1, car2
    }
    return 0;
}

