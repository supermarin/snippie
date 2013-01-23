//Init With Dictionary
//Initializer and Unpack method
//
//Completion scopes: ["ClassImplementation"]
//
Copy / Paste in Xcode:

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (!self) return nil;
    
    [self unpackFromDictionary:dict];
    
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary new];
    
    return dict;
}

#pragma mark - Private

- (void)unpackFromDictionary:(NSDictionary *)dictionary {
    
}
