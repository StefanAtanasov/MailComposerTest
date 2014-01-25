//
//  SendFeedback.h
//  MailTest
//
//  Created by Stefan Atanasov on 1/25/14.
//  Copyright (c) 2014 StefanAtanasov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SendFeedback : UIView <MFMailComposeViewControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) MFMailComposeViewController *feedBackComposer;
- (void)sendFeedbackComposer;

@end
