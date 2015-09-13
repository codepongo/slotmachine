//
//  register.h
//  SlotMachine
//
//  Created by zuohaitao on 15-9-5.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Register : UIViewController {
	UILabel* level;
	UISlider* levelChooser;
	UITextField* user;

}

@property (nonatomic, retain) IBOutlet UILabel* level;
@property (nonatomic, retain) IBOutlet UISlider* levelChooser;
@property (nonatomic, retain) IBOutlet UITextField* user;
- (IBAction)enter:(id)sender;

- (IBAction)levelChanged:(id)sender;

- (IBAction)popKeyboard:(id)sender;

@end
