//
//  main.m
//  NSStringSubdividing
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *car = @"Maserati GranTurismo";
        NSLog(@"%@", [car substringToIndex:8]);               // Maserati
        NSLog(@"%@", [car substringFromIndex:9]);             // GranTurismo
        NSRange range = NSMakeRange(9, 4);
        NSLog(@"%@", [car substringWithRange:range]);         // Gran
        
        NSString *models = @"Porsche,Ferrari,Maserati";
        NSArray *modelsAsArray = [models componentsSeparatedByString:@","];
        NSLog(@"%@", [modelsAsArray objectAtIndex:1]);        // Ferrari
    }
    return 0;
}

