//
//  Car.m
//  NSObjectPropertyDirective
//
//  Created by Svetlin Ralchev on 3/22/14.
//  Copyright (c) 2014 Svett Ralchev. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize running = _running;

- (BOOL)running {
    return _running;
}

- (void)setRunning:(BOOL)newValue {
    _running = newValue;
}

@end
