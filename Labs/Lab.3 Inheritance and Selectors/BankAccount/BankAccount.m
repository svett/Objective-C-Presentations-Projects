//
//  BankAccount.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

#pragma mark - Initialization

+ (instancetype)bankAccountWithNumber:(NSString *)number balance:(float)amount
{
    return [[self alloc] initWithNumber:number balance:amount];
}

- (id)initWithNumber:(NSString *)number balance:(float)amount {
    self = [super init];
    
    if(self) {
        _number = [number copy];
        _balance = amount;
    }
    
    return self;
}


#pragma mark - Methods

- (void)withdraw:(float)amount {
    _balance-=amount;
}

- (void)desposit:(float)amount
{
    _balance+=amount;
}

@end
