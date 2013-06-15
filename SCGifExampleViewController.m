//
//  SCGifExampleViewController.m
//  SCGifExample
//
//  Created by  on 11-12-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SCGifExampleViewController.h"


@implementation SCGifExampleViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"1.gif" ofType:nil];
    NSData* imageData = [NSData dataWithContentsOfFile:filePath];
    
    _gifImageView = [[[SCGIFImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)] autorelease];
    [_gifImageView setData:imageData];

    [self.view addSubview:_gifImageView];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)actionAnimate:(id)sender {
    _gifImageView.animating = !_gifImageView.animating;
    
    if (_gifImageView.animating) {
        [_button setTitle:@"Pause" forState:UIControlStateNormal];
    } else {
        [_button setTitle:@"Continue" forState:UIControlStateNormal];
    }
}

@end
