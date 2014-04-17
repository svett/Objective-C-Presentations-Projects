//
//  main.m
//  LabNSDate
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *date = [[NSDate alloc] init];
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *components = [calendar components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear
                                                   fromDate:date];
        
        NSLog(@"Day %li", components.day);
        NSLog(@"Month %li", components.month);
        NSLog(@"Year %li", components.year);
        
    }
    return 0;
}

