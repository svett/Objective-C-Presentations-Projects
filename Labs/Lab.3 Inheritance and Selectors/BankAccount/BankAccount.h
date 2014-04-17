//
//  BankAccount.h
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The bank account
 */
@interface BankAccount : NSObject
{
    float _balance;
}

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

@end
