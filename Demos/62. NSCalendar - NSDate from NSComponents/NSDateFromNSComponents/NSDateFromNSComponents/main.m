//
//  main.m
//  NSDateFromNSComponents
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
        NSCalendarUnit units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
        NSDateComponents *components = [calendar components:units fromDate:now];
        
        NSLog(@"Day: %ld", [components day]);
        NSLog(@"Month: %ld", [components month]);
        NSLog(@"Year: %ld", [components year]);
    }
    return 0;
}

