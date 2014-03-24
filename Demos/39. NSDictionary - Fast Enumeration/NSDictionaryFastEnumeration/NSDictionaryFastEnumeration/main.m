//
//  main.m
//  NSDictionaryFastEnumeration
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        NSLog(@"We currently have %ld models available", [inventory count]);
        for (id key in inventory) {
            NSLog(@"There are %@ %@'s in stock", inventory[key], key);
        }
    }
    return 0;
}

