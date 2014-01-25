//
//  ViewController.m
//  MailTest
//
//  Created by Stefan Atanasov on 1/25/14.
//  Copyright (c) 2014 StefanAtanasov. All rights reserved.
//

#import "ViewController.h"
#import "SendFeedback.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)button:(id)sender {
    SendFeedback *view = (SendFeedback*)self.view;
    [view sendFeedbackComposer];
}
@end
