//
//  SHTileFactory.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHTileFactory.h"
#import "SHTile.h"

@implementation SHTileFactory

static int const NUM_COLS = 3;
static int const NUM_ROWS = 4;


// return 4 rows by 3 cols of tiles
+(NSArray *)buildTiles {
    NSMutableArray *allTiles = [[NSMutableArray alloc] initWithCapacity:NUM_ROWS];

    [allTiles addObject:[SHTileFactory buildRow0]];     // bottom row
    [allTiles addObject:[SHTileFactory buildRow1]];
    [allTiles addObject:[SHTileFactory buildRow2]];
    [allTiles addObject:[SHTileFactory buildRow3]];     // top row

    return allTiles;
}

+(NSInteger)numberOfColumns {
    return NUM_COLS;
}

+(NSInteger)numberOfRows {
    return NUM_ROWS;
}

+(NSArray *)buildRow0 {
    NSMutableArray *row = [[NSMutableArray alloc] initWithCapacity:NUM_COLS];
    // col 0
    SHTile *tile = [[SHTile alloc] initWithImageName:@"PirateStart.jpg"];
    tile.story = @"Welcome to your Pirate Adventure!\nYou will have some fun here.";
    tile.action = @"Take sword";
    tile.weapon = @"sword";
    [row addObject:tile];

    return row;
}

+(NSArray *)buildRow1 {
    NSMutableArray *row = [[NSMutableArray alloc] initWithCapacity:NUM_COLS];
    // col 0
    
    return row;
}

+(NSArray *)buildRow2 {
    NSMutableArray *row = [[NSMutableArray alloc] initWithCapacity:NUM_COLS];
    // col 0
    
    return row;
}

+(NSArray *)buildRow3 {
    NSMutableArray *row = [[NSMutableArray alloc] initWithCapacity:NUM_COLS];
    // col 0
    
    return row;
}

@end
