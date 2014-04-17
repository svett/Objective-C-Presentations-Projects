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
        BankAccount *bankAccount = [BankAccount bankAccountWithNumber:@"555-1234" balance:2000];
        NSLog(@"Bank Account Number: %@ amount: %f", [bankAccount number], bankAccount.balance);
    }
    return 0;
}

