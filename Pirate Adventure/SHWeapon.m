//
//  SHWeapon.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHWeapon.h"

@implementation SHWeapon

-(id)init {
    if ((self = [super init])) {
        self.name = @"Fists";
        self.points = 5;
        self.defensePoints = 2;
    }
    return self;
}

-(NSString *) description {
    return [NSString stringWithFormat:@"(%@, points:%i, defense:%i)"
     , self.name
     , self.points
     , self.defensePoints
     ];
}

@end
