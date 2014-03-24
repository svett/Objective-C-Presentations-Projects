//
//  main.m
//  NSTimeZone
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSTimeZone *centralStandardTime = [NSTimeZone timeZoneWithAbbreviation:@"CST"];
        NSTimeZone *cairoTime = [NSTimeZone timeZoneWithName:@"Africa/Cairo"];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [formatter setLocale:posix];
        [formatter setDateFormat:@"M.d.y h:mm a"];
        NSString *dateString = @"11.4.2012 8:09 PM";
        
        [formatter setTimeZone:centralStandardTime];
        NSDate *eightPMInChicago = [formatter dateFromString:dateString];
        NSLog(@"%@", eightPMInChicago);      // 2012-11-05 02:09:00 +0000
        
        [formatter setTimeZone:cairoTime];
        NSDate *eightPMInCairo = [formatter dateFromString:dateString];
        NSLog(@"%@", eightPMInCairo);
    }
    return 0;
}

