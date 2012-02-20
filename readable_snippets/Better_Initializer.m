//Better Initializer
//Used for generating an -(id)init mehod
//
//Completion scopes: ["ClassImplementation"]
//
Copy / Paste in Xcode:

- (id)init {
    self = [super init];
    if (!self) return nil;

    <#initializations#>
    
    return self;
}
