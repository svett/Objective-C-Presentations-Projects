//
//  main.m
//  NSComponentsFromNSDate
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSCalendar *calendar = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setYear:2012];
        [components setMonth:11];
        [components setDay:4];
        
        NSDate *november4th2012 = [calendar dateFromComponents:components];
        NSLog(@"%0.0f seconds between Jan 1st, 2001 and Nov 4th, 2012",
              [november4th2012 timeIntervalSinceReferenceDate]);
    }
    return 0;
}

