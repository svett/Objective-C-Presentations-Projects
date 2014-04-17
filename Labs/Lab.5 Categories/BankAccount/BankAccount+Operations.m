//
//  BankAccount+Operations.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "BankAccount+Operations.h"

@implementation BankAccount (Operations)

- (void)transferAmount:(float)amount bankAccount:(BankAccount *)bankAccount
{
    [self withdraw:amount];
    [bankAccount desposit:amount];
    
    NSLog(@"Transfer %f from %@ to %@", amount, self.number, bankAccount.number);
}

@end
