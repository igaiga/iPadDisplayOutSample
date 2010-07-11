//
//  iPadDisplayOutAppDelegate.m
//  iPadDisplayOut
//
//  Created by Kuniaki IGARASHI on 10/07/11.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "iPadDisplayOutAppDelegate.h"
#import "iPadDisplayOutViewController.h"

@implementation iPadDisplayOutAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    CGSize maxSize;    
    if([[UIScreen screens]count] > 1) {
        // There is a external display.
        UIScreenMode *maxScreenMode;
        for(int i = 0; i < [[[[UIScreen screens] objectAtIndex:1] availableModes]count]; i++)
            {
            UIScreenMode *current = [[[[UIScreen screens]objectAtIndex:1]availableModes]objectAtIndex:i];
            if(current.size.width > maxSize.width);
                {
                maxSize = current.size;
                maxScreenMode = current;
                }
            }
        UIScreen *external = [[UIScreen screens] objectAtIndex:1];
        external.currentMode = maxScreenMode;
       
        window.screen = external;
    }
    
    // setting external display size. 
    CGPoint point = CGPointMake(0.0f, 0.0f);
    //    CGSize size = CGSizeMake(1024.0f, 768.0f);
    CGSize size = maxSize;
    CGRect frame = viewController.view.frame;
    frame.origin = point;
    frame.size.width = size.width;
    frame.size.height = size.height;   
    [viewController.view setFrame:frame];
    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
