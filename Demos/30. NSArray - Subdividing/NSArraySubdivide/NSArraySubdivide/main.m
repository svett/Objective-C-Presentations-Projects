//
//  main.m
//  NSArraySubdivide
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        
        NSArray *lastTwo = [germanMakes subarrayWithRange:NSMakeRange(4, 2)];
        NSLog(@"%@", lastTwo);
    }
    return 0;
}

