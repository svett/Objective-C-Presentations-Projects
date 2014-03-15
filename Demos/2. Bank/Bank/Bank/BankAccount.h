//
//  BankAccount.h
//  Bank
//
//  Created by Svetlin Ralchev on 3/15/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject
{
    CGFloat _balance;
}

- (id)initWithBalance:(CGFloat)balance;
- (void)deposit:(CGFloat)amount;
- (void)withdraw:(CGFloat)amount;
- (CGFloat)balance;

@end
