//
//  SHViewController.m
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import "SHViewController.h"
#import "SHCharacter.h"
#import "SHTile.h"
#import "SHTileFactory.h"

@interface SHViewController ()

@property SHCharacter *character;
@property CGPoint currentTile;
@property NSArray *tiles;

@end

@implementation SHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button routines

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(id)sender {
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
}

- (IBAction)southButtonPressed:(UIButton *)sender {
}

- (IBAction)westButtonPressed:(UIButton *)sender {
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
}

#pragma mark - helper methods

-(void)setup {
    self.currentTile = CGPointMake(0, 0);   // start here
    self.tiles = [SHTileFactory buildTiles];
    self.character = [[SHCharacter alloc] init];
    [self showTile];
    [self showStats];
    [self showDirectionButtons];
}

-(void)showDirectionButtons {
    if (self.currentTile.y == 0) {
        self.northButton.hidden = NO;
        self.southButton.hidden = YES;
    } else if (self.currentTile.y == ([SHTileFactory numberOfRows] -1)) {
        self.northButton.hidden = YES;
        self.southButton.hidden = NO;
    } else {
        self.northButton.hidden = YES;
        self.southButton.hidden = YES;
    }

    if (self.currentTile.x == 0) {
        self.westButton.hidden = YES;
        self.eastButton.hidden = NO;
    } else if (self.currentTile.x == ([SHTileFactory numberOfColumns] - 1)) {
        self.westButton.hidden = NO;
        self.eastButton.hidden = YES;
    } else {
        self.westButton.hidden = YES;
        self.eastButton.hidden = YES;
    }
}

-(void)showStats {
    self.healthOut.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.armorOut.text = self.character.armor.name;
    self.weaponOut.text = self.character.weapon.name;
}

-(void)showTile {
    NSArray *row = [self.tiles objectAtIndex:self.currentTile.y];
    SHTile *tile = [row objectAtIndex:self.currentTile.x];
//    NSLog(@"%@", tile.story);
    self.storyOut.text = tile.story;
    [self.actionButton setTitle:tile.action forState:UIControlStateNormal];
}

@end
