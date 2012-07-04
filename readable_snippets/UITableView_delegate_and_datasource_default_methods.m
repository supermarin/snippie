//UITableView delegate and datasource default methods
//Used when adding an tableView in existing controller
//
//Completion scopes: ["ClassImplementation"]
//
Copy / Paste in Xcode:

#pragma mark - Tableview datasource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
static NSString *CellIdentifier = @"Cell";

UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

[self configureCell:cell atIndexPath:indexPath];
return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
return <#numberOfSections#>;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
return <#numberOfRows#>;
}


#pragma mark - Tableview delegate

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

}
