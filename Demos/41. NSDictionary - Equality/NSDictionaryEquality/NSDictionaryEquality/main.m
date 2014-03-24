//
//  main.m
//  NSDictionaryEquality
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDictionary *warehouseInventory = @{
                                             @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                             @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                             @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                             @"BMW X6" : [NSNumber numberWithInt:16],
                                             };
        NSDictionary *showroomInventory = @{
                                            @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                            @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                            @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                            @"BMW X6" : [NSNumber numberWithInt:16],
                                            };
        if ([warehouseInventory isEqualToDictionary:showroomInventory]) {
            NSLog(@"Why are we storing so many cars in our showroom?");
        }
    }
    return 0;
}

