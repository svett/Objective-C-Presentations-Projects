//
//  main.m
//  NSMutableDictionary
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableDictionary *jobs = [NSMutableDictionary
                                     dictionaryWithDictionary:@{
                                                                @"Audi TT" : @"John",
                                                                @"Audi Quattro (Black)" : @"Mary",
                                                                @"Audi Quattro (Silver)" : @"Bill",
                                                                @"Audi A7" : @"Bill"
                                                                }];
        NSLog(@"%@", jobs);
    }
    return 0;
}

