//
//  Customer.m
//  NSCoding
//
//  Created by Svetlin Ralchev on 4/9/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (id)initWithIdentifier:(NSInteger)identifier
               firstName:(NSString *)firstName
                lastName:(NSString *)lastName
{
    self = [super init];
    
    if(self) {
        self.idefintifier = identifier;
        self.firstName = firstName;
        self.lastName = lastName;
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if(self) {
        self.idefintifier = [[aDecoder decodeObjectForKey:@"identifier"] integerValue];
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:@(_idefintifier) forKey:@"identifier"];
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
}

@end
