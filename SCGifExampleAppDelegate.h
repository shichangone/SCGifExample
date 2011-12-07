//
//  SCGifExampleAppDelegate.h
//  SCGifExample
//
//  Created by  on 11-12-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCGifExampleViewController;

@interface SCGifExampleAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SCGifExampleViewController *viewController;

@end
