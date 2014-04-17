//
//  main.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"
#import "Bank.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Bank *bank = [[Bank alloc] init];
        
        [bank addAccount: [BankAccount bankAccountWithNumber:@"555-7235" balance:2000]];
        [bank addAccount: [BankAccount bankAccountWithNumber:@"237-5235" balance:1120]];
        [bank addAccount: [BankAccount bankAccountWithNumber:@"298-9239" balance:2300]];
        [bank addAccount: [BankAccount bankAccountWithNumber:@"237-2237" balance:1500]];
        [bank addAccount: [BankAccount bankAccountWithNumber:@"237-1132" balance:1700]];
        
        NSPredicate *predicate = [NSPredicate predicateWithBlock:
                                  ^BOOL(id evaluatedObject, NSDictionary *bindings) {
                                      BankAccount *account = evaluatedObject;
                                      return account.balance < 2000;
                                  }];
        
        NSArray* accounts = [bank accountsWith:predicate];
        float total = 0;
        
        for(BankAccount *account in accounts) {
            NSLog(@"Account %@ with amount %f", account.number, account.balance);
            total += account.balance;
        }
        
        NSLog(@"Total amount: %f", total);
    }
    return 0;
}

