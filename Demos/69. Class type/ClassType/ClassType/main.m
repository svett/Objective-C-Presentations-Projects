//
//  main.m
//  ClassType
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Class targetClass = [NSString class];
        id mysteryObject = @"An NSString object";
        if ([mysteryObject isKindOfClass:targetClass]) {
            NSLog(@"Yup! That's an instance of the target class");
        }
    }
    return 0;
}

