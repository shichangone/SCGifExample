
# How to use it?
Use SCGIFImageView as a UIImageView to show a gif image with animation.

    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"1.gif" ofType:nil];
    NSData* imageData = [NSData dataWithContentsOfFile:filePath];

    SCGIFImageView* gifImageView = [[[SCGIFImageView alloc] initWithFrame:self.view.bounds] autorelease];
    [gifImageView setData:imageData];
    
    [self.view addSubview:gifImageView];


