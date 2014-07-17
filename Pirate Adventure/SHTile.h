//
//  SHTile.h
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHTile : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *story;
@property (nonatomic, strong) NSString *action;
@property (nonatomic, strong) NSString *weapon;

-(id) initWithImageName:(NSString *) imageName;

@end
