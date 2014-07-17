//
//  SHViewController.h
//  Pirate Adventure
//
//  Created by Steven Howard on 7/12/14.
//  Copyright (c) 2014 Steve Howard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *healthOut;
@property (strong, nonatomic) IBOutlet UILabel *weaponOut;
@property (strong, nonatomic) IBOutlet UILabel *armorOut;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UITextView *storyOut;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;

@end
