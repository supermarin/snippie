# Snippets backup-import & Cheatsheet generator
#### For Xcode.
You can __browse snippets__ from my xcode-arsenal in the __readable_snippets__ directory above.

Below is the auto-generated cheat-sheet from your own exported snippets.
It's created every time you back up your snippets and push to git.

### Installation
Fork the repository, to be able to export your own snippets and cheat-sheet. <br>
You can save the repository wherever you want. <br>
`$ git clone git@github.com:mneorr/xcode-snippets-manager.git xcode-snippets` <br>
`$ cd xcode-snippets` <br>
`$ bundle install`

### Standard usage
``$ rake backup`` <br>
This will clear my snippets, and put yours in the repository.

It will also generate readable snippets in the __readable_snippets__ dir.
And, it will re-create this file.

After you do backup, `commit` and `push`, and you should have your fork up and ready.
The cheat-sheet will be updated as well.

### Import
##### to your other computers, or a new OS installation
The simplest thing you can do is:
<br>
`$ rake import`
<br>
It should not duplicate the same snippets.

However, if you want to clear the existing snippets, and use the fresh ones, you may want to use <br>
`$ rake clean_import`

<br><br>

## Cheat Sheet
		
* Delegate pragma mark - `delpragma`
* Image View With Image Named - `imgimg`
* Release object - `release`
* Property Custom class - `pobj`
* Property From dictionary - `pvfk`
* View did dissapear - `vdd`
* View Will Dissappear - `vwd`
* Pragma Mark - `mark`
* Private Pragma mark - `pmark`
* Better Initializer - `init`
* View Will Appear - `vwa`
* NSLog - `log`
* Factory method with Dictionary - `facdict`
* @Synthesizer with _prefix - `psynth`
* Private Category - `privcat`
* Pragma - View Lifecycle - `pview`
* View Did Load - `vdl`
* View Did Unload - `vdu`
*  - ``
* View Did Appear - `vda`
* NSString with format - `swf`
* Property String - `pstr`
* Init With Dictionary - `initdict`
* Value For Key - `vfk`
* Property NSNumber - `pnum`
* UIViewController pragma marks - `conpragmas`
* Singleton - `singleton`
* Image named - `inamed`
* Property IBOutlet custom class - `pibo`
* UITableView delegate and datasource default methods - `delDat`
* Property NSArray - `parr`
* Method declaration - `method`
* JSON operation - `jsonop`
* Void method declaration - `void`
