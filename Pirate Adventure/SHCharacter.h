//
//  SHCharacter.h
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHArmor.h"
#include "SHWeapon.h"

@interface SHCharacter : NSObject

@property (nonatomic) NSInteger health;
@property (nonatomic, strong) SHArmor *armor;
@property (nonatomic, strong) SHWeapon *weapon;

@end
