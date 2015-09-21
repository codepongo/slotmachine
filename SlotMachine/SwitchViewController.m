    //
//  SwitchViewController.m
//  SlotMachine
//
//  Created by zuohaitao on 15-9-15.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import "SwitchViewController.h"


@implementation SwitchViewController

@synthesize reg;
@synthesize game;

-(void) initWithCoder:(NSCoder *)aDecoder {
	
	
}
-(IBAction)enterGame:(id)sender {
	if (self.game == nil) {
		self.game = [[Game alloc]initWithNibName:@"Register" bundle:nil];
	}
	[reg.view removeFromSuperview];
	[self.view insertSubview:self.game.view atIndex:0];
}
/*
-(IBAction)ExitGame:(id)sender {
	if (self.reg == nil) {
		self.reg = [[Register alloc]initWithNibName:@"Register" bundle:nil];
	}
	[reg.view removeFromSuperview];
	[self.view insertSubView:self.game.view atIndex:0];
}
*/
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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
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


@end
