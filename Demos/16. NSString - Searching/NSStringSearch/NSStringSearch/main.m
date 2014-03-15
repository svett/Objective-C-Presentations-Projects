//
//  main.m
//  NSStringSearch
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *car = @"Maserati GranCabrio";
        NSRange searchResult = [car rangeOfString:@"Cabrio"];
        if (searchResult.location == NSNotFound) {
            NSLog(@"Search string was not found");
        } else {
            NSLog(@"'Cabrio' starts at index %lu and is %lu characters long",
                  searchResult.location,        // 13
                  searchResult.length);         // 6
        }
    }
    return 0;
}

