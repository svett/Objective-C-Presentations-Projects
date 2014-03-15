//
//  main.m
//  NSMutableStringManipulation
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableString *car = [NSMutableString stringWithCapacity:20];
        [car setString:@"Lotus Elise"];
        [car replaceCharactersInRange:NSMakeRange(6, 5)
                           withString:@"Exige"];
        NSLog(@"%@", car);
        
        [car deleteCharactersInRange:NSMakeRange(5, 6)];
        NSLog(@"%@", car);
    }
    return 0;
}

