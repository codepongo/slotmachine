//
//  register.m
//  SlotMachine
//
//  Created by zuohaitao on 15-9-5.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import "Register.h"


@implementation Register

@synthesize level;
@synthesize levelChooser;
@synthesize user;
@synthesize picker;
@synthesize date;
@synthesize switcher;

- (IBAction)withPassword:(id)sender {
	if (YES == self.switcher.on) {
		self.picker.hidden = NO;
		self.date.hidden = YES;
	}
	else {
		self.picker.hidden = YES;
		self.date.hidden = NO;
	}
}
-(IBAction)enter:(id)sender {
}

-(IBAction)levelChanged:(id)sender {
	level.text = [NSString stringWithFormat:@"%.0f", levelChooser.value];
}

-(IBAction)popKeyboard:(id)sender {
	[self.user resignFirstResponder];
}
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	for (int i= 0; i < 3; i++) {
		[picker selectRow:3*10/2 inComponent:i animated:NO];
	}
	[self withPassword:nil];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	
    // Releases the view if it doesn't have a superview.
	self.level = nil;
	self.levelChooser = nil;
	self.user = nil;
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark UIPickerView Delegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [NSString stringWithFormat:@"%d", row%10];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	if (row > 3 * 10 || row <2 * 10) {
		[self.picker selectRow:(row%10+20) inComponent:component animated:NO];
	}
	return;
}
#pragma mark -
#pragma mark UIPickerView Data Source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component {
	return 10*5;
}
@end
