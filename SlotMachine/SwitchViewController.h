//
//  SwitchViewController.h
//  SlotMachine
//
//  Created by zuohaitao on 15-9-15.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Register.h"
#import "Game.h"

@interface SwitchViewController : UIViewController {
	Register* reg;
	Game* game;
}
@property (nonatomic, retain) IBOutlet Register* reg;
@property (nonatomic, retain) IBOutlet Game* game;

- (IBAction) enterGame:(id)sender;
- (IBAction) exitGame:(id)sender;

@end
