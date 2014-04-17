//
//  main.m
//  BankAccount
//
//  Created by Svetlin Ralchev on 4/6/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CurrentAccount.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        CurrentAccount *currentAccount = [CurrentAccount bankAccountWithNumber:@"555-1234"
                                                                    balance:2000];
        currentAccount.interestRate = 50;
        
        SEL applyInteresSelector = @selector(applyInterest);
        [currentAccount performSelector: applyInteresSelector];
        
        NSLog(@"Balance: %f", currentAccount.balance);
    }
    return 0;
}

