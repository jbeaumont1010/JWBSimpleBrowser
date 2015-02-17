//
//  JWBViewController.m
//  JWBSimpleBrowser
//
//  Created by Joseph Beaumont on 2/10/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import "JWBViewController.h"

@interface JWBViewController ()

@end

@implementation JWBViewController

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
    // Do any additional setup after loading the view from its nib.
    
    _responseString = [[NSMutableString alloc] initWithCapacity:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//NSURL *url = [NSURL URLWithString:simpleAddr];
//NSURLRequest *request = [NSURLRequest requestWithURL:url];
//NSURLConnection * conn = [NSURLConnection connectionWithRequest:request delegate:self];

#pragma mark - UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - NSURLConnectionDelegate

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    UIAlertView *uiAlert = [[UIAlertView alloc] initWithTitle:@"Done!" message:@"Data is here!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [uiAlert show];
    
    [_urlContent setText:_responseString];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSString *newData = [NSString stringWithUTF8String:[data bytes]];
    
    [_responseString appendString:newData];
}

- (IBAction)loadURL:(id)sender{
    [_urlField resignFirstResponder];
    NSString *simpleAddr =[_urlField text];
    
    if (simpleAddr == nil || [simpleAddr isEqualToString:@""]) {
        simpleAddr = @"http://www.pitt.edu";
    }
    
    NSURL *url = [NSURL URLWithString:simpleAddr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //Whenever something happens, it's me.
    NSURLConnection *conn = [NSURLConnection connectionWithRequest:request delegate:self];
    
    if (conn!=nil){
        [conn start];
    }
}


@end
