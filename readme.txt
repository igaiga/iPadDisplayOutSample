This is a sample code for using iPad external display.

* iPadDisplayOutViewController.view
** displayed view in external display

* iPadDisplayOutAppDelegate:: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
main code is in here.

* [[UIScreen screens]count]
**count == 1 if external one has detected.
* window.screen = external;
** to set using external display.

*CGPoint point = CGPointMake(0.0f, 0.0f); ...
** setting external display size.

You can use iPad simulater with external display.
There is settings in hardware menu.
