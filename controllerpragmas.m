// #UIViewController core pragma marks
// This is how I organize the most of the classes, but in this particular case, controllers.
// Private stuff is on the top, below init and dealloc. This way you can avoid
// any declarations of a private interface. The IBActions are on the bottom - nobody calls them.
// Delegates are below Public.
// 
// Platform: All
// Language: Objective-C
// Completion Scopes: Top Level, Class Implementation, Class Interface Methods

#pragma mark - Private


#pragma mark - Public


#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


#pragma mark - IBActions