//
//  Car.h
//  NSObjectMethods
//
//  Created by Svetlin Ralchev on 3/24/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

// Factory methods
+ (Car *)car;
+ (Car *)carWithModel:(NSString *)aModel;
+ (Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage;

// Constructor methods
- (id)initWithModel:(NSString *)aModel;
- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage;

// Accessors
- (BOOL)isRunning;
- (void)setRunning:(BOOL)running;
- (NSString *)model;
- (void)setModel:(NSString *)model;

// Calculated values
- (double)maximumSpeed;

// Action methods
- (void)startEngine;
- (void)driveForDistance:(double)theDistance;
- (void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination;
- (void)turnByAngle:(double)theAngle quickly:(BOOL)useParkingBrake;
- (void)turnToAngle:(double)theAngle;

// Error handling methods
- (BOOL)loadPassenger:(id)aPassenger error:(NSError **)error;

// Comparison methods
- (BOOL)isEqualToCar:(Car *)anotherCar;
- (Car *)fasterCar:(Car *)anotherCar;
- (Car *)slowerCar:(Car *)anotherCar;

@end
