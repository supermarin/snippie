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
		%{# Snippets backup-import & Cheatsheet generator
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
		}

	end

end
