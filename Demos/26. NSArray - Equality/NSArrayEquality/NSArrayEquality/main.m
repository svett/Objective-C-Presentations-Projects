//
//  main.m
//  NSArrayEquality
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
        NSArray *sameGermanMakes = [NSArray arrayWithObjects:@"Mercedes-Benz",
                                    @"BMW", @"Porsche", @"Opel",
                                    @"Volkswagen", @"Audi", nil];
        
        if ([germanMakes isEqualToArray:sameGermanMakes]) {
            NSLog(@"Oh good, literal arrays are the same as NSArrays");
        }
    }
    return 0;
}

