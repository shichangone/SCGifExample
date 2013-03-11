//
//  SCGIFImageView.h
//  TestGIF
//
//  Created by shichangone on 11-7-12.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCGIFImageFrame : NSObject {
    
}
@property (nonatomic) double duration;
@property (nonatomic, retain) UIImage* image;

@end

@interface SCGIFImageView : UIImageView {
    NSInteger _currentImageIndex;
}
@property (nonatomic, retain) NSArray* imageFrameArray;
@property (nonatomic, retain) NSTimer* timer;

- (void)setData:(NSData*)imageData;

@end
