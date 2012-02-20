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
		FileUtils.rm_f @README_FILENAME
	end



	def readme_title
		%{# Snippets Backup / Restore & cheat-sheet

Feel free to fork, so you can export your own snippets and have them stored in your own repo.
Below is the auto-generated cheat-sheet from your own exported snippets.
It's created every time you back up your snippets and push to git.

### Installation
You can save the repository wherever you want. 
<br>
`$ git clone git@github.com:mneorr/Xcode-Snippets.git`
<br>
`$ bundle install`

### Backing up your own snippets once you're satisfied
`$ rake backup`
<br>
Notice that this will clear the old ones, and put a fresh copy in the BACKUP dir.
It will generate readable snippets in the SNIPPETS dir.
And, it will re-create the readme file, and the cheat-sheet below.


### Importing
The simplest thing you can do is:
<br>
`$ rake import`
<br>
It should not duplicate the same snippets.

However, if you want to clear the existing snippets, and use the fresh ones, you may want to use <br>
`$ rake clean_import`

<br><br>

## Cheat Sheet
		}

	end

end