//
//  main.m
//  NSArrayEnumeration
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
        // With fast-enumeration
        for (NSString *item in germanMakes) {
            NSLog(@"%@", item);
        }
        // With a traditional for loop
        for (int i=0; i<[germanMakes count]; i++) {
            NSLog(@"%d: %@", i, germanMakes[i]);
        }
        
        [germanMakes enumerateObjectsUsingBlock:^(id obj,
                                                  NSUInteger idx,
                                                  BOOL *stop) {
            NSLog(@"%ld: %@", idx, obj);
        }];
        
    }
    return 0;
}

