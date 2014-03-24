//
//  main.m
//  NSDateCalculationsFromToDate
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *start = [NSDate dateWithTimeIntervalSinceReferenceDate:0];
        NSDate *end = [NSDate date];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit units = NSWeekCalendarUnit;
        NSDateComponents *components = [calendar components:units
                                                   fromDate:start
                                                     toDate:end
                                                    options:0];
        NSLog(@"It has been %ld weeks since January 1st, 2001",
              [components week]);
    }
    return 0;
}

