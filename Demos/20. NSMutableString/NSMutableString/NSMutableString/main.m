//
//  main.m
//  NSMutableString
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableString *car = [NSMutableString stringWithString:@"Porsche 911"];
        [car setString:@"Zastava"];
        NSLog(@"Car model: %@", car);
    }
    return 0;
}

