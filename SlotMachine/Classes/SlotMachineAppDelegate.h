//
//  SlotMachineAppDelegate.h
//  SlotMachine
//
//  Created by zuohaitao on 15-9-5.
//  Copyright 2015 codepongo.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Register.h"

@interface SlotMachineAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController* nav;
	Register* reg;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *nav;
@property (nonatomic, retain) IBOutlet Register *reg;

@end

