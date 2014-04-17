//
//  CurrentAccount.h
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "BankAccount.h"

/**
 Represents a current account
 */
@interface CurrentAccount : BankAccount

/**
 Gets or sets the interest rate
 */
@property (nonatomic, assign) float interestRate;

/**
 Applies the interest to balance
 */
- (void)applyInterest;

@end
