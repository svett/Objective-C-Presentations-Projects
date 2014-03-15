//
//  main.m
//  NSArrayFiltering
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
        
        NSPredicate *beforeL = [NSPredicate predicateWithBlock:
                                ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                                    NSComparisonResult result = [@"L" compare:evaluatedObject];
                                    if (result == NSOrderedDescending) {
                                        return YES;
                                    } else {
                                        return NO;
                                    }
                                }];
        NSArray *makesBeforeL = [germanMakes
                                 filteredArrayUsingPredicate:beforeL];
        NSLog(@"%@", makesBeforeL);
    }
    return 0;
}

