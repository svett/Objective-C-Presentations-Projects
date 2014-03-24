//
//  main.m
//  NSDateComparision
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
        NSComparisonResult result = [now compare:nextWeek];
        if (result == NSOrderedAscending) {
            NSLog(@"now < nextWeek");
        } else if (result == NSOrderedSame) {
            NSLog(@"now == nextWeek");
        } else if (result == NSOrderedDescending) {
            NSLog(@"now > nextWeek");
        }
        NSDate *earlierDate = [now earlierDate:lastWeek];
        NSDate *laterDate = [now laterDate:lastWeek];
        NSLog(@"%@ is earlier than %@", earlierDate, laterDate);
    }
    return 0;
}

