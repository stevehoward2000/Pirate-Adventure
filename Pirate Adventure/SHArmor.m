//
//  SHArmor.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHArmor.h"

@implementation SHArmor

-(id)initWithName:(NSString *)name withHealth:(NSInteger)health {
    if ((self = [super init])) {
        self.name = name;
        self.health = health;
    }
    return self;
}

@end
