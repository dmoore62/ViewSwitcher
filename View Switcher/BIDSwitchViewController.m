//
//  BIDSwitchViewController.m
//  View Switcher
//
//  Created by daniel moore on 8/5/13.
//  Copyright (c) 2013 daniel moore. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDBlueViewController.h"
#import "BIDYellowViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.blueViewController = [[BIDBlueViewController alloc]
                               initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if(self.blueViewController.view.superview == nil){
        self.blueViewController = nil;
    }else{
        self.yellowViewController = nil;
    }
}

-(IBAction)switchViews:(id)sender
{

    if(self.yellowViewController.view.superview == nil){
        self.yellowViewController = [[BIDYellowViewController alloc]
                                     initWithNibName:@"YellowView" bundle:nil];
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    }else{
        self.blueViewController = [[BIDBlueViewController alloc]
                                     initWithNibName:@"BlueView" bundle:nil];

        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

@end
