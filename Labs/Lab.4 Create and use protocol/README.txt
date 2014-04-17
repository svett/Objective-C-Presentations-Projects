1. Create protocol BankAccountDelegate that has the following methods:
    - bankAccountBalanceChanged:(BankAccount*)account;
    - bankAccountDidDeposit:(BankAccount*)account amount:(float)value;
    - bankAccountDidWithdraw:(BankAccount*)account amount:(float)value;
2. Create a property delegate in BankAccount property of type protocol
3. Invoke the methods for the coresponding operations
4. Create class BankAccountAuditor that implements the protocol and print out each action (withdraw, deposit and etc.).
5. Instaciate a bank account and assign auditor to its delegate property.
6. Perform deposit operation.
