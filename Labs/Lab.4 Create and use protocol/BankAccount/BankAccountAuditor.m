//
//  BankAccountAuditor.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "BankAccountAuditor.h"

@implementation BankAccountAuditor

- (void)bankAccountBalanceChanged:(BankAccount *)account amount:(float)value {
    NSLog(@"Account %@ balance changed to %f", account.number, value);
}

- (void)bankAccountDidDeposit:(BankAccount *)account amount:(float)value {
    NSLog(@"Account %@ deposited with %f", account.number, value);
}

- (void)bankAccountDidWithdraw:(BankAccount *)account amount:(float)value {
    NSLog(@"Account %@ withdraw with %f", account.number, value);
}

@end
