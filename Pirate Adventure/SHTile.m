//
//  SHTile.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHTile.h"

@implementation SHTile

-(id) initWithImageName:(NSString *) imageName {
    if ((self = [super init])) {
        self.image = [UIImage imageWithContentsOfFile:imageName];
    }
    return self;
}

@end
