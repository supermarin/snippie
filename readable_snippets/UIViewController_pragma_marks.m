//UIViewController pragma marks
//Pragma marks for the better code organisation. Private on the top eliminates the need of declaring a private interface.
//
//Completion scopes: ["ClassImplementation"]
//
Copy / Paste in Xcode:

#pragma mark - Private


#pragma mark - Public


#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - IBActions
