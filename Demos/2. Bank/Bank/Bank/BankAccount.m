#import "BankAccount.h"

@implementation BankAccount

- (id)init {
    self = [self initWithBalance:0.f];
    return self;
}

- (id)initWithBalance:(CGFloat)balance {
    self = [super init];

    if(self) {
        _balance = balance;
    }

    return self;
}

- (CGFloat)balance {
    return _balance;
}

- (void)deposit:(CGFloat)amount {
    _balance += amount;
}

- (void)withdraw:(CGFloat)amount {
    _balance -= amount;
}

@end
