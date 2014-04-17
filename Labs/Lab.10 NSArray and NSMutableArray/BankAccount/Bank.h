//
//  Bank.h
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BankAccount;

@interface Bank : NSObject

/**
 Adds account to this bank
 @account The account
 */
- (void)addAccount:(BankAccount*)account;

/**
 Removes account from this bank
 @account The account
 */
- (void)removeAccount:(BankAccount*)account;

/**
 Removes all bank accounts
 */
- (void)removeAllAccounts;

/**
 Finds the accounts that obeys the predicate
 @predicate The predicate
 */
- (NSArray*)accountsWith:(NSPredicate*)predicate;

@end
