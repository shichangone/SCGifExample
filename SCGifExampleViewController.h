//
//  SCGifExampleViewController.h
//  SCGifExample
//
//  Created by  on 11-12-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCGIFImageView.h"

@interface SCGifExampleViewController : UIViewController {
    IBOutlet SCGIFImageView* _gifImageView;
    IBOutlet UIButton* _button;
}

- (IBAction)actionAnimate:(id)sender;

@end
