//Singleton
//Quickly declare a singleton
//
//Completion scopes: ["ClassImplementation"]
//
Copy / Paste in Xcode:

#pragma mark - Singleton
static <#self class#> *singleton;

- (id)initForSingleton {
    self = [super init];
    if (!self) return nil;
    
    return self;
}

+ (id)instance {
    @synchronized(self) {
        if (singleton) return singleton;
        
        singleton = [[self alloc] initForSingleton];
        return singleton;
    }
}
