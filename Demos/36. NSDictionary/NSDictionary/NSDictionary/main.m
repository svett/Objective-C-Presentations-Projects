//
//  main.m
//  NSDictionary
//
//  Created by Svetlin Ralchev on 3/21/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Literal syntax
        NSDictionary *inventory = @{
                                    @"Mercedes-Benz SLK250" : [NSNumber numberWithInt:13],
                                    @"Mercedes-Benz E350" : [NSNumber numberWithInt:22],
                                    @"BMW M3 Coupe" : [NSNumber numberWithInt:19],
                                    @"BMW X6" : [NSNumber numberWithInt:16],
                                    };
        // Values and keys as arguments
        inventory = [NSDictionary dictionaryWithObjectsAndKeys:
                     [NSNumber numberWithInt:13], @"Mercedes-Benz SLK250",
                     [NSNumber numberWithInt:22], @"Mercedes-Benz E350",
                     [NSNumber numberWithInt:19], @"BMW M3 Coupe",
                     [NSNumber numberWithInt:16], @"BMW X6", nil];
        // Values and keys as arrays
        NSArray *models = @[@"Mercedes-Benz SLK250", @"Mercedes-Benz E350",
                            @"BMW M3 Coupe", @"BMW X6"];
        NSArray *stock = @[[NSNumber numberWithInt:13],
                           [NSNumber numberWithInt:22],
                           [NSNumber numberWithInt:19],
                           [NSNumber numberWithInt:16]];
        inventory = [NSDictionary dictionaryWithObjects:stock forKeys:models];
        NSLog(@"%@", inventory);
    }
    return 0;
}

