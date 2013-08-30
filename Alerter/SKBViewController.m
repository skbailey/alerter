//
//  SKBViewController.m
//  Alerter
//
//  Created by shbailey63 on 8/30/13.
//  Copyright (c) 2013 shbailey63. All rights reserved.
//

#import "SKBViewController.h"

@interface SKBViewController ()

@end

@implementation SKBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alertButtonTapped:(UIButton *)sender {
  NSLog(@"Alert Button Tapped");
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alerts are great"
                                                      message:@"They just are"
                                                     delegate:self
                                            cancelButtonTitle:@"No worries"
                                            otherButtonTitles: @"Sure", nil];
  
  [alertView show];
}

#pragma mark UIAlertViewDelegate Methods -

- (void)didPresentAlertView:(UIAlertView *)alertView {
  NSLog(@"Alert View has been presented");
}

- (void)alertViewCancel:(UIAlertView *)alertView {
  NSLog(@"Alert View has been canceled");
}

- (void) alertView:(UIAlertView*)alertView didDismissWithButtonIndex: (NSInteger)buttonIndex {
  NSLog(@"A button has been tapped %ld", (long)buttonIndex);
}

- (BOOL)alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView {
  return NO;
}

#pragma mark First Responder -

- (void)buttonPressed:(id)sender {
  NSLog(@"Acting as first responder");
}

@end
