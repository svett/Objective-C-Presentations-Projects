//
//  Bank.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "Bank.h"

@implementation Bank
{
    NSMutableArray *_accounts;
}

- (id)init {
    self = [super init];
    
    if(self) {
        _accounts = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addAccount:(BankAccount *)account {
    [_accounts addObject:account];
}

- (void)removeAccount:(BankAccount *)account {
    [_accounts removeObject:account];
}

- (void)removeAllAccounts {
    [_accounts removeAllObjects];
}

- (NSArray*)accountsWith:(NSPredicate *)predicate {
   return [_accounts filteredArrayUsingPredicate:predicate];
}

@end
