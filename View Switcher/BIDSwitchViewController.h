//
//  BIDSwitchViewController.h
//  View Switcher
//
//  Created by daniel moore on 8/5/13.
//  Copyright (c) 2013 daniel moore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDBlueViewController;
@class BIDYellowViewController;

@interface BIDSwitchViewController : UIViewController

@property (strong, nonatomic) BIDYellowViewController *yellowViewController;
@property (strong, nonatomic) BIDBlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
