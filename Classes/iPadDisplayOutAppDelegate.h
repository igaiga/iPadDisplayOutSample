//
//  iPadDisplayOutAppDelegate.h
//  iPadDisplayOut
//
//  Created by Kuniaki IGARASHI on 10/07/11.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPadDisplayOutViewController;

@interface iPadDisplayOutAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPadDisplayOutViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPadDisplayOutViewController *viewController;

@end

