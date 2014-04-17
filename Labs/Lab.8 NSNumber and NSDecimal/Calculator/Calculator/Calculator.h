//
//  Calculator.h
//  Calculator
//
//  Created by Svetlin Ralchev on 4/7/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Represents calculator
 */
@interface Calculator : NSObject

/**
 Returns the accumulated value
 */
@property (nonatomic, readonly) NSNumber* accumulator;

/**
 Adds a value to accumulator
 @value The value
 */
- (void)add:(NSNumber*)value;

/**
 Substracts a value from accumulator
 @value The value
 */
- (void)subtract:(NSNumber*)value;

/**
 Multiplies the accumulator with this value
 @value The value
 */
- (void)multiply:(NSNumber*)value;

/**
 Divides the accumulated value by this value
 @value The value
 */
- (void)divide:(NSNumber*)value;

@end
