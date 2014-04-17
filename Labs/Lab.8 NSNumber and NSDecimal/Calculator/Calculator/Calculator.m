//
//  Calculator.m
//  Calculator
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (id)init {
    self = [super init];
    
    if(self) {
        _accumulator = @0.f;
    }
    
    return self;
}

- (void)add:(NSNumber *)value {
    _accumulator =@(_accumulator.doubleValue + value.doubleValue);
}

- (void)subtract:(NSNumber *)value {
    _accumulator =@(_accumulator.doubleValue - value.doubleValue);
}

- (void)multiply:(NSNumber *)value {
    _accumulator =@(_accumulator.doubleValue * value.doubleValue);
}

- (void)divide:(NSNumber *)value {
    _accumulator =@(_accumulator.doubleValue / value.doubleValue);
}

@end
