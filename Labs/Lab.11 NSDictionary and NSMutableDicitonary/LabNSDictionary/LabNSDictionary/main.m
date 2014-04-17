//
//  main.m
//  LabNSDictionary
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableDictionary *settings = [NSMutableDictionary dictionaryWithDictionary:@{@"user": @"root",
                                                                                        @"password": @"iosdev"}];
        
        [settings setObject:@"google.com" forKey:@"website"];
        
        NSLog(@"Username: %@", [settings objectForKey:@"user"]);
        NSLog(@"Password: %@", [settings objectForKey:@"password"]);
        NSLog(@"Website: %@", [settings objectForKey:@"website"]);
        
    }
    return 0;
}

