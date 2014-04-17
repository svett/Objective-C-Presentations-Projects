//
//  main.m
//  Calculator
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];
        [calculator add:@10];
        [calculator add:@45];
        [calculator subtract:@3];
        [calculator divide:@2.f];
        
        //((10 + 45) - 3)/2.f
        
        NSLog(@"Result: %@", [calculator accumulator]);
    }
    return 0;
}

