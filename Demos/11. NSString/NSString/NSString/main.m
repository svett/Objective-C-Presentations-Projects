//
//  main.m
//  NSString
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *make = @"Porsche";
        NSString *model = @"911";
        int year = 1968;
        NSString *message = [NSString stringWithFormat:@"That's a %@ %@ from %d!",
                             make, model, year];
        NSLog(@"%@", message);
    }
    return 0;
}

