//
//  main.m
//  NSCoding
//
//  Created by Svetlin Ralchev on 4/9/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Customer *customer = [[Customer alloc] initWithIdentifier:1
                                                        firstName:@"John"
                                                         lastName:@"Freeman"];
        
        NSString *homePath = NSHomeDirectory();
        NSString *filePath = [homePath stringByAppendingPathComponent:@"customers.xml"];
        
        NSData *data =  [NSKeyedArchiver archivedDataWithRootObject:customer];
        [data writeToFile:filePath atomically:true];
    }
    
    return 0;
}

