//
//  BankAccount.h
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef float (^TaxFunction)(float);

@protocol BankAccountDelegate;

/**
 The bank account
 */
@interface BankAccount : NSObject

/**
 Creates a bank account
 @param number The bank account number
 @param amount The balance
 */
+ (instancetype)bankAccountWithNumber:(NSString*)number balance:(float)amount;

/**
 Initializes a bank account
 @number The bank account number
 @amount The bank account balance
 */
- (id)initWithNumber:(NSString*)number balance:(float)amount;

/**
 Returns the bank account number
 */
@property (nonatomic, copy, readonly) NSString* number;

/**
 Gets or sets the bank delegate
 */
@property (nonatomic, assign) id<BankAccountDelegate> delegate;

/**
 Returns the bank account balance
 */
@property (nonatomic, readonly) float balance;

/**
 Withdraw amount from the bank account
 @amount The amount to be withdrawn
 */
- (void)withdraw: (float)amount;

/**
 Deposits amoun th the bank account
 @amount The amount to be deposited
 */
- (void)desposit: (float)amount;

/**
 Deduc taxes from the balance
 */
- (void)deductTaxes:(TaxFunction)function;

@end

/**
 Represents a BankAccount delegate
 */
@protocol BankAccountDelegate <NSObject>

/**
 Called when balance is changed
 @account The bank account
 @value The amount
 */
- (void)bankAccountBalanceChanged:(BankAccount*)account amount:(float)value;

/**
 Called when amount is deposited to the account
 @account The bank account
 @value The value
 */
- (void)bankAccountDidDeposit:(BankAccount*)account amount:(float)value;

/**
 Called when money withdraw
 @account The bank account
 @value The amount
 */
- (void)bankAccountDidWithdraw:(BankAccount*)account amount:(float)value;
@end

