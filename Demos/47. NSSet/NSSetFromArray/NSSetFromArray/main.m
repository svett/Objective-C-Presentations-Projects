//
//  main.m
//  NSSetFromArray
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *japaneseMakes = @[@"Honda", @"Mazda",
                                   @"Mitsubishi", @"Honda"];
        NSSet *uniqueMakes = [NSSet setWithArray:japaneseMakes];
        NSLog(@"%@", uniqueMakes);    // Honda, Mazda, Mitsubishi
    }
    return 0;
}

