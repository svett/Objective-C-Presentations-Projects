//
//  CurrentAccount.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "CurrentAccount.h"

@implementation CurrentAccount

- (NSString*)description
{
    return @"Current Account has interest rate";
}

- (void)applyInterest
{
    float value = _balance * (_interestRate / 100.f);
    _balance += value;
}

@end
