//
//  JWBAppDelegate.h
//  JWBSimpleBrowser
//
//  Created by Joseph Beaumont on 2/10/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//  This file explains "what the class can do"
//
//

#import <UIKit/UIKit.h>

@interface JWBAppDelegate : UIResponder <UIApplicationDelegate>

//Save this 
@property (strong, nonatomic) UIWindow *window;



-(IBAction)loadURL:(id)sender;

@end
