//
//  main.m
//  NSDateFormatter
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDate *now = [NSDate date];
        
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];

        NSString *prettyDate = [formatter stringFromDate:now];
        NSLog(@"%@", prettyDate);
        
        // Formatter configuration
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [formatter setLocale:posix];
        [formatter setDateFormat:@"M.d.y"];
        // Date to string
        NSLog(@"%@", prettyDate);
    }
    return 0;
}

