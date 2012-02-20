require 'fileutils'

class ReadmeGenerator
	
	def initialize(snippets)		
		@README_FILENAME = 'README.md'
		@snippets = snippets
	end

	def self.generate(snippets)
		generator = self.new(snippets)
		generator.delete_old_readme
		generator.create_readme
	end
	
	def formatted_snippets
		@snippets.map do |snippet|
			[ "* #{snippet.title} - `#{snippet.shortcut}`" ]
		end
	end

	def create_readme
		File.open @README_FILENAME, 'w' do |file|
			file.puts readme_title
			file.puts formatted_snippets.join("\n")
		end
	end
	
	def delete_old_readme
		FileUtils.rm_f %w( README.md )
	end



	def readme_title
		%{# Xcode Snippets Backup / Import tool

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
		}

	end

end