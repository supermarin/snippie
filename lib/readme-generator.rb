require 'fileutils'

class ReadmeGenerator
	
	def initialize
		@README_FILENAME = 'README.md'
	end

	def generate

		snippets = Dir['*.codesnippet'].map do |snippet_file|
			snippet = Snippet.parse(File.read(snippet_file))
		end

		grouped_snippets = snippets.group_by {|snippet| snippet.summary }


		group_output = grouped_snippets.map do |summary,snippets|

			group_title = [ "", "####{summary}", "" ]

			group_snippets_output = snippets.map do |snippet|
				[ "* #{snippet.title} - `#{snippet.shortcut}`" ]
			end

			group_title + group_snippets_output
		end    

		readme_title = %{# Xcode Code Snippets

			### Installation

			```
			cd ~/Library/Developer/Xcode/UserData/CodeSnippets/
			git init
			git remote add burtlo git@github.com:burtlo/xcode-snippets.git
			git pull burtlo master
			```
		}


		# Generate an markdown doc

		File.open 'README.md', 'w' do |file|
			file.puts readme_title
			file.puts group_output.join("\n")
		end

	end
	
	def delete_old_readme
		FileUtils.rm_f %w( README.md )
	end
end