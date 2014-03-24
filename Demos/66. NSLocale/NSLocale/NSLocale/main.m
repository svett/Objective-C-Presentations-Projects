//
//  main.m
//  NSLocale
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSLocale *egyptianArabic = [[NSLocale alloc] initWithLocaleIdentifier:@"ar_EG"];
        [formatter setLocale:egyptianArabic];
        [formatter setDateFormat:@"M.d.y"];
        
        NSDate *now = [NSDate date];
        NSString *prettyDate = [formatter stringFromDate:now];
        NSLog(@"%@", prettyDate);
    }
    return 0;
}

