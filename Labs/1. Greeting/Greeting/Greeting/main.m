//
//  main.m
//  Greeting
//
//  Created by Svetlin Ralchev on 3/14/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        NSLog(@"Available languages:");
        NSLog(@" 1. English");
        NSLog(@" 2. French");
        NSLog(@" 3. Spanish");
        
        int result = 0;
        
        do
        {
            NSLog(@"Please choose a language (1-3): ");
            scanf("%d", &result);
        }
        while (!(result>=1 && result<=3));
        
        NSString *greeting = nil;
        
        switch (result) {
            case 1:
                greeting = @"Hello";
                break;
            case 2:
                greeting = @"Bonjour";
                break;
            case 3:
                greeting = @"Hola";
                break;
        }
        
        NSLog(@"%@, World!", greeting);
        
    }
    return 0;
}

