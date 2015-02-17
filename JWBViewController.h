//
//  JWBViewController.h
//  JWBSimpleBrowser
//
//  Created by Joseph Beaumont on 2/10/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import <UIKit/UIKit.h>
//Check out protocols
@interface JWBViewController : UIViewController <NSURLConnectionDelegate>

@property (nonatomic, weak) IBOutlet UITextField *urlField;
@property (nonatomic, weak) IBOutlet UITextView *urlContent;
@property (nonatomic, weak) IBOutlet UIButton *goButton;

@property (nonatomic, strong) NSMutableString *responseString;
-(IBAction)loadURL:(id)sender;

@end
