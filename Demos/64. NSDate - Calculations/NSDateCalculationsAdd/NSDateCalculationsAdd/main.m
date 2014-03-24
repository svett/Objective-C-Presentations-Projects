//
//  main.m
//  NSDateCalculationsAdd
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSCalendar *calendar = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setMonth:1];
        NSDate *oneMonthFromNow = [calendar dateByAddingComponents:components
                                                            toDate:now
                                                           options:0];
        NSLog(@"%@", oneMonthFromNow);
    }
    return 0;
}

