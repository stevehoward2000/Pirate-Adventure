//
//  SHTileFactory.h
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHTileFactory : NSObject

+(NSArray *)buildTiles;
+(NSInteger)numberOfColumns;
+(NSInteger)numberOfRows;

@end
