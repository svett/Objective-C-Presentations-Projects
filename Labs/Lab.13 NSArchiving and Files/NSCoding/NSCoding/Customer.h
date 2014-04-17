//
//  Customer.h
//  NSCoding
//
//  Created by Svetlin Ralchev on 4/9/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Represents a customer class
 */
@interface Customer : NSObject<NSCoding>

/**
 Initializes a customer with first and last name
 @param identifier The identifier
 @param firstName The firstName
 @param lastName The lastNam
 */
- (id)initWithIdentifier:(NSInteger)identifier
               firstName:(NSString*)firstName
                lastName:(NSString*)lastName;

/**
 Gets or sets the customer unique identifier
 */
@property (nonatomic, assign) NSInteger idefintifier;

/**
 Gets or sets customer's first name
 */
@property (nonatomic, copy) NSString *firstName;

/**
 Gets or sets customer's last name
 */
@property (nonatomic, copy) NSString *lastName;

/**
 Gets or sets customer's date of birth
 */
@property (nonatomic, copy) NSDate *dateOfBirth;

@end
