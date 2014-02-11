//
//  Vegetable.m
//  Vegetable
//
//  Created by Alayne Doney on 2/11/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "Vegetable.h"

@implementation Vegetable

- initWithName:(NSString *)inName andShape:(NSString *)inShape andColor:(NSString *)inColor {
    self = super.init;
    if (self) {
        _name = inName;
        _color = inColor;
        _shape = inShape;
    }
    
    return self;
}

- (NSString *)description
{
    return self.name;
}

- (NSString *) printSelf{
    return [[NSString alloc] initWithFormat:@"%@ is %@ and %@", _name, _color, _shape];
    
}

@end

