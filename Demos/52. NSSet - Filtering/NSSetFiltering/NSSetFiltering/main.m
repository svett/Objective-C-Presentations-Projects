//
//  main.m
//  NSSetFiltering
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *toyotaModels = [NSSet setWithObjects:@"Corolla", @"Sienna",
                               @"Camry", @"Prius",
                               @"Highlander", @"Sequoia", nil];
        NSSet *cModels = [toyotaModels objectsPassingTest:^BOOL(id obj, BOOL *stop) {
            if ([obj hasPrefix:@"C"]) {
                return YES;
            } else {
                return NO;
            }
        }];
        NSLog(@"%@", cModels);
    }
    return 0;
}

