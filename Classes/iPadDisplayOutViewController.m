//
//  iPadDisplayOutViewController.m
//  iPadDisplayOut
//
//  Created by Kuniaki IGARASHI on 10/07/11.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "iPadDisplayOutViewController.h"

@implementation iPadDisplayOutViewController

@synthesize label;

- (void)viewDidLoad {
    NSArray* screens = [UIScreen screens];
    label.text = [NSString stringWithFormat:@"screen count = %d", [screens count]];

}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
