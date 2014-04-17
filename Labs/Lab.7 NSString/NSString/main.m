//
//  main.m
//  NSString
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *path = @"/home/root/documents/presentations/";
        NSRange range = [path rangeOfString:@"root"];
        
        if(range.location != NSNotFound) {
            path = [path stringByReplacingCharactersInRange:range withString:@"admin"];
            path = [path stringByDeletingLastPathComponent];
            path = [path stringByReplacingOccurrencesOfString:@"/" withString:@"\\"];
            path = [NSString stringWithFormat:@"C:%@.zip", path];
            NSLog(@"New path: %@", path);
        }
    }
    return 0;
}

