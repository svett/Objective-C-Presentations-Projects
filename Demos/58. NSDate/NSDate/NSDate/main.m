//
//  main.m
//  NSDate
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSTimeInterval secondsInWeek = 7 * 24 * 60 * 60;
        NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek
                                              sinceDate:now];
        NSDate *nextWeek = [NSDate dateWithTimeInterval:secondsInWeek
                                              sinceDate:now];
        NSLog(@"Last Week: %@", lastWeek);
        NSLog(@"Right Now: %@", now);
        NSLog(@"Next Week: %@", nextWeek);
    }
    return 0;
}

