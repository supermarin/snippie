# Xcode Snippets Backup / Import tool

Feel free to fork, so you can export your own snippets and have them stored in your own repo.
Below is auto-generated 'cheat-sheet' for your own exported snippets.

### Installation

You can save the repository anywhere you want.

```
$ git clone git@github.com:mneorr/Xcode-Snippets.git
$ bundle install
```

### Backing up your own snippets once you're satisfied
```
$ rake backup
```
Notice that this will clear the old ones, and put a fresh copy in the BACKUP dir.
It will generate readable snippets in the SNIPPETS dir.
And, it will re-create the readme file, and the cheat-sheet below.


### Importing
The simplest thing you can do is:

```
$ rake import
```
It shuold not duplicate the same snippets.

However, if you want to clear the existing snippets, and use the fresh ones,

```
$ rake clean_import
```
is for you.


## Cheat Sheet
		
* Delegate pragma mark - `delpragma`
* Release object - `release`
* Pragma Mark - `mark`
* Better Initializer - `init`
* NSLog - `log`
* @Synthesizer with _prefix - `psynth`
* Private Category - `privcat`
* View Did Load - `vdl`
* Value for key - `vfk`
* NSString with format - `swf`
* UIViewController pragma marks - `conpragmas`
* Singleton - `singleton`
* UITableView delegate and datasource default methods - `delDat`
* Method declaration - `method`
* Void method declaration - `void`
