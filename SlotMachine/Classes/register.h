//
//  register.h
//  SlotMachine
//
//  Created by zuohaitao on 15-9-5.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Register : UIViewController 
	<UIPickerViewDataSource, UIPickerViewDelegate>
{
	UILabel* level;
	UISlider* levelChooser;
	UITextField* user;
	UIPickerView* picker;
	UIDatePicker* date;
	UISwitch* switcher;
}

@property (nonatomic, retain) IBOutlet UILabel* level;
@property (nonatomic, retain) IBOutlet UISlider* levelChooser;
@property (nonatomic, retain) IBOutlet UITextField* user;
@property (nonatomic, retain) IBOutlet UIPickerView* picker;
@property (nonatomic, retain) IBOutlet UIDatePicker* date;
@property (nonatomic, retain) IBOutlet UISwitch* switcher;

- (IBAction)withPassword:(id)sender;

- (IBAction)enter:(id)sender;

- (IBAction)levelChanged:(id)sender;

- (IBAction)popKeyboard:(id)sender;

@end
