//
//  main.m
//  NSMutableDictionaryCombining
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
        NSDictionary *bakerStreetJobs = @{
                                          @"BMW 640i" : @"Dick",
                                          @"BMW X5" : @"Brad"
                                          };
        [jobs addEntriesFromDictionary:bakerStreetJobs];
    }
    return 0;
}

