//
//  main.m
//  NSMutableSetPredicates
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableSet *toyotaModels = [NSMutableSet setWithObjects:@"Corolla", @"Sienna",
                                      @"Camry", @"Prius",
                                      @"Highlander", @"Sequoia", nil];
        NSPredicate *startsWithC = [NSPredicate predicateWithBlock:
                                    ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                                        if ([evaluatedObject hasPrefix:@"C"]) {
                                            return YES;
                                        } else {
                                            return NO;
                                        }
                                    }];
        [toyotaModels filterUsingPredicate:startsWithC];
        NSLog(@"%@", toyotaModels);
    }
    return 0;
}

