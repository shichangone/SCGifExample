# How to use it?

Use SCGIFImageView as a UIImageView to show a gif image with animation.
since it's a subclass of UIImageView, it can also support other image formats that UIImageView support.

    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"1.gif" ofType:nil];
    SCGIFImageView* gifImageView = [[[SCGIFImageView alloc] initWithGIFFile:filePath] autorelease];
    gifImageView.frame = CGRectMake(0, 0, gifImageView.image.size.width, gifImageView.image.size.height);
    gifImageView.center = self.view.center;
    [self.view addSubview:gifImageView];


