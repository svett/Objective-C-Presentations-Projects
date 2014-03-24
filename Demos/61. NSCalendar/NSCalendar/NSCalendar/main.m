//
//  main.m
//  NSCalendar
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSCalendar *gregorian = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSGregorianCalendar];
        NSCalendar *buddhist = [[NSCalendar alloc]
                                initWithCalendarIdentifier:NSBuddhistCalendar];
        NSCalendar *preferred = [NSCalendar currentCalendar];
        NSLog(@"%@", gregorian.calendarIdentifier);
        NSLog(@"%@", buddhist.calendarIdentifier);
        NSLog(@"%@", preferred.calendarIdentifier);
    }
    return 0;
}

