//JSON operation
//AFNetworking JSON operation
//
//Completion scopes: ["CodeBlock"]
//
Copy / Paste in Xcode:

    [[AFJSONRequestOperation JSONRequestOperationWithRequest:nil
     success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
         
     }
     failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
         
     }] start];
