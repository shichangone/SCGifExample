//
//  SCGifExampleViewController.m
//  SCGifExample
//
//  Created by  on 11-12-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SCGifExampleViewController.h"
#import "SCGIFImageView.h"

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
    SCGIFImageView* gifImageView = [[[SCGIFImageView alloc] initWithGIFFile:filePath] autorelease];
    gifImageView.frame = CGRectMake(0, 0, gifImageView.image.size.width, gifImageView.image.size.height);
    gifImageView.center = self.view.center;
    [self.view addSubview:gifImageView];
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

@end
