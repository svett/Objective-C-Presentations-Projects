//
//  main.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"
#import "BankAccount+Operations.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BankAccount *bankAccount = [BankAccount bankAccountWithNumber:@"555-1234"
                                                                    balance:2000];
        
        BankAccount *targetAccount = [BankAccount bankAccountWithNumber:@"556-4344"
                                                                balance:300];
        
        [bankAccount transferAmount:250 bankAccount:targetAccount];
    }
    return 0;
}

