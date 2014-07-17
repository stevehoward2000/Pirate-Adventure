//
//  SHCharacter.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHCharacter.h"

@implementation SHCharacter

-(id)init {
    if ((self = [super init])) {
        self.health = 100;
        self.armor = [[SHArmor alloc] init];
        self.weapon = [[SHWeapon alloc] init];
    }
    return self;
}

@end
