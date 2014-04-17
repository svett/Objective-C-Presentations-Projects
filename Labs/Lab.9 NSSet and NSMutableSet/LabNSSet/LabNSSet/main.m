//
//  main.m
//  LabNSSet
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *cars = [NSSet setWithObjects:@"Honda", @"BMW", @"Mercedes", nil];
        NSSet *motorbikes = [NSSet setWithObjects:@"KTM", @"BMW", @"Yamaha", @"Honda", nil];
        
        NSSet *vehicles = [cars setByAddingObjectsFromSet:motorbikes];
        
        NSLog(@"All vehicles");
        
        for(NSString* vehicleName in vehicles) {
            NSLog(@" Vehicle: %@", vehicleName);
        }
        
        NSMutableSet *intersected = [NSMutableSet setWithSet:cars];
        [intersected intersectSet:motorbikes];
        
        NSLog(@"Common Brands");
        
        for(NSString* vehicleName in intersected) {
            NSLog(@" Vehicle: %@", vehicleName);
        }
    }
    return 0;
}

