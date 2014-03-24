//
//  main.m
//  NSDateComponents
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDateComponents *november4th2012 = [[NSDateComponents alloc] init];
        [november4th2012 setYear:2012];
        [november4th2012 setMonth:11];
        [november4th2012 setDay:4];
        NSLog(@"%@", november4th2012);
    }
    return 0;
}

