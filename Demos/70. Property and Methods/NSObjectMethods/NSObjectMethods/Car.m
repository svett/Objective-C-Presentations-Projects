//
//  Car.m
//  NSObjectMethods
//
//  Created by Svetlin Ralchev on 3/24/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "Car.h"

@implementation Car
{
    BOOL _isRunning;
    NSString *_model;
    double _maximumSpeed;
    double _mileage;
}

#pragma mark - Constructors

// Constructor methods
- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    
    if(self) {
        _model = aModel;
    }
    
    return self;
}

- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage {
    self = [super init];
    
    if(self) {
        _model = aModel;
     
        
    }
    
    return self;
}

// Factory methods
+ (Car *)car {
    return [[Car alloc] init];
}

+ (Car *)carWithModel:(NSString *)aModel {
    return [[Car alloc] initWithModel:aModel];
}

+ (Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage {
    return [[Car alloc] initWithModel:aModel mileage:theMileage];
}

#pragma mark - Properties

// Accessors
- (BOOL)isRunning {
    return _isRunning;
}

- (void)setRunning:(BOOL)running {
    _isRunning = running;
}

- (NSString *)model {
    return _model;
}

- (void)setModel:(NSString *)model {
    _model = model;
}

// Calculated values
- (double)maximumSpeed {
    return _maximumSpeed;
}

#pragma mark - Methods

- (void)startEngine {
    _isRunning = YES;
    NSLog(@"Starting the %@'s engine", _model);
}

- (void)driveForDistance:(double)theDistance {
    NSLog(@"The %@ just drove %0.1f miles",
          _model,  theDistance);
}

- (void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination
{
    NSLog(@"Drive from %@ to %@", theOrigin, theDestination);
}

- (void)turnByAngle:(double)theAngle quickly:(BOOL)useParkingBrake {
    if (useParkingBrake) {
        NSLog(@"The %@ is drifting around the corner!", _model);
    }
    else {
        NSLog(@"The %@ is making a gentle %0.1f degree turn", _model, theAngle);
    }
}

- (void)turnToAngle:(double)theAngle {
}

// Error handling methods
- (BOOL)loadPassenger:(id)aPassenger error:(NSError **)error {
    return NO;
}

// Comparison methods
- (BOOL)isEqualToCar:(Car *)anotherCar {
    return [_model isEqualToString:anotherCar.model] && _maximumSpeed == anotherCar.maximumSpeed;
}

- (Car *)fasterCar:(Car *)anotherCar {
    return self->_maximumSpeed > anotherCar->_maximumSpeed ? self: anotherCar;
}

- (Car *)slowerCar:(Car *)anotherCar {
    return self->_maximumSpeed < anotherCar->_maximumSpeed ? self: anotherCar;
}

@end
