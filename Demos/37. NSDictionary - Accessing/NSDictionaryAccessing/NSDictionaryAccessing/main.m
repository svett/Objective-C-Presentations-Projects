//
//  main.m
//  NSDictionaryAccessing
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
        NSLog(@"There are %@ X6's in stock", inventory[@"BMW X6"]);
        NSLog(@"There are %@ E350's in stock",
              [inventory objectForKey:@"Mercedes-Benz E350"]);
    }
    return 0;
}

