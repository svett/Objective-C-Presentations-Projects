//
//  main.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BankAccount *bankAccount = [BankAccount bankAccountWithNumber:@"555-1234"
                                                                    balance:2000];
        
        TaxFunction calculateTaxes = ^(float value) {
            if(value < 50000) {
                return value * 0.2f;
            }
            
            return value * 0.4f;
        };
        
        NSLog(@"Balance (gross): %f", bankAccount.balance);
        [bankAccount deductTaxes:calculateTaxes];
        NSLog(@"Balance (net): %f", bankAccount.balance);
    }
    return 0;
}

