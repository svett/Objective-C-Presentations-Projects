//
//  main.m
//  NSStringSubstringReplace
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *elise = @"Lotus Elise";
        NSRange range = NSMakeRange(6, 5);
        NSString *exige = [elise stringByReplacingCharactersInRange:range
                                                         withString:@"Exige"];
        NSLog(@"%@", exige);
        NSString *evora = [exige stringByReplacingOccurrencesOfString:@"Exige"
                                                           withString:@"Evora"];
        NSLog(@"%@", evora);
        
        NSString *car = @"lotUs beSpoKE";
        NSLog(@"%@", [car lowercaseString]);
        NSLog(@"%@", [car uppercaseString]);
        NSLog(@"%@", [car capitalizedString]);
    }
    return 0;
}

