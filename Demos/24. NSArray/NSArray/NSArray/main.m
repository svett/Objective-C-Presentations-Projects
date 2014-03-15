//
//  main.m
//  NSArray
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
        NSArray *ukMakes = [NSArray arrayWithObjects:@"Aston Martin",
                            @"Lotus", @"Jaguar", @"Bentley", nil];
        
        NSLog(@"First german make: %@", germanMakes[0]);
        NSLog(@"First U.K. make: %@", [ukMakes objectAtIndex:0]);
    }
    return 0;
}

