//
//  SendFeedback.m
//  MailTest
//
//  Created by Stefan Atanasov on 1/25/14.
//  Copyright (c) 2014 StefanAtanasov. All rights reserved.
//

#import "SendFeedback.h"

@implementation SendFeedback

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (void)baseInit
{
    //Useless code to the problem.
    self.feedBackComposer = [[MFMailComposeViewController alloc] init];
    [self.feedBackComposer setMailComposeDelegate:self];
    [self.feedBackComposer setToRecipients:[NSArray arrayWithObject:@"info@getibox.com"]];
    [self.feedBackComposer setMessageBody:@"" isHTML:NO];
    [self.feedBackComposer setSubject:@"What I Love About iBox"];
}

- (void)sendFeedbackComposer
{
    [self baseInit];
    [self.window.rootViewController presentViewController:self.feedBackComposer animated:YES completion:nil];
}

- (void)mailComposeController:(MFMailComposeViewController *)feedBackComposer didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    //This method doesn't get called.
    
    [feedBackComposer.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"Error: %@", error);
}

@end
