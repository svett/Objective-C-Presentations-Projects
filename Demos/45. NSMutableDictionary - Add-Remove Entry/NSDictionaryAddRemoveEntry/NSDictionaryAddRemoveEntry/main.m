//
//  main.m
//  NSDictionaryAddRemoveEntry
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
        // Transfer an existing job to Mary
        [jobs setObject:@"Mary" forKey:@"Audi TT"];
        // Finish a job
        [jobs removeObjectForKey:@"Audi A7"];
        // Add a new job
        jobs[@"Audi R8 GT"] = @"Jack";
    }
    return 0;
}

