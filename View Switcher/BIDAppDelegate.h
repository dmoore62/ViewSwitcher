//
//  BIDAppDelegate.h
//  View Switcher
//
//  Created by daniel moore on 8/4/13.
//  Copyright (c) 2013 daniel moore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDSwitchViewController;
@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BIDSwitchViewController *switchViewController;

@end
