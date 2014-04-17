//
//  main.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"
#import "BankAccountAuditor.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BankAccount *bankAccount = [BankAccount bankAccountWithNumber:@"555-1234"
                                                                    balance:2000];
        
        BankAccountAuditor *auditor = [[BankAccountAuditor alloc] init];
        bankAccount.delegate = auditor;
        
        [bankAccount desposit:100];
    }
    return 0;
}

