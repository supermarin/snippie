//Factory method with Dictionary
//For loop with a Mutable Array
//
//Completion scopes: ["CodeBlock"]
//
Copy / Paste in Xcode:

    NSMutableArray *renameMe = [NSMutableArray new];
    
    for (NSDictionary *renameDict in json[@"<#key#>"])
        [renameMe addObject:[[<#klass#> alloc] initWithDictionary:renameDict]];
    
    return renameMe;
