//
//  BankAccount+Operations.h
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "BankAccount.h"

@interface BankAccount (Operations)

/**
 Transfers money from one account to another
 @amount The amount
 @bankAccount The Bank Account reciever
 */
- (void)transferAmount:(float)amount bankAccount:(BankAccount*)bankAccount;

@end
