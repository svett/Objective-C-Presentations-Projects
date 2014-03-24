//
//  main.m
//  NSSetComparing
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                                @"Mitsubishi", @"Toyota", nil];
        NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
        NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                     @"Alfa Romeo", nil];
        
        if ([johnsFavoriteMakes isEqualToSet:japaneseMakes]) {
            NSLog(@"John likes all the Japanese auto makers and no others");
        }
        if ([johnsFavoriteMakes intersectsSet:japaneseMakes]) {
            // You'll see this message
            NSLog(@"John likes at least one Japanese auto maker");
        }
        if ([johnsFavoriteMakes isSubsetOfSet:japaneseMakes]) {
            // And this one, too
            NSLog(@"All of the auto makers that John likes are Japanese");
        }
        if ([marysFavoriteMakes isSubsetOfSet:japaneseMakes]) {
            NSLog(@"All of the auto makers that Mary likes are Japanese");
        }
    }
    return 0;
}

