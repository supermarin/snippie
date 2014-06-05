class ReadableSnippetsGenerator

	def initialize(snippets)
		@snippets = snippets
	end

	def self.generate(snippets)
		Dir.chdir('readable_snippets')		
		
		self.new(snippets).save_files

		Dir.chdir('../')
	end
	
	def formatted_snippets
		@snippets.map do |snippet|
			{ 	
				:filename => friendly_filename(snippet.title),
				:ext => ext(snippet.language),
				:content => [
					"//#{snippet.title}\n" <<
					"//#{snippet.summary}\n" <<
					"//\n" <<
					"//Completion scopes: #{ snippet.completion_scopes}\n" <<
					"//Language: #{ snippet.language }\n" <<
					"//\n" <<
					"Copy / Paste in Xcode:\n\n" <<
					"#{snippet.code}"
				]
			}
		end
	end

	def save_snippet(formatted_snippet)
		File.open "#{formatted_snippet[:filename]}.#{formatted_snippet[:ext]}", 'w' do |file|
			file.puts formatted_snippet[:content]
		end
	end

	def save_files
		formatted_snippets.each do |snippet|
			save_snippet(snippet)
		end
	end

	def friendly_filename(filename)
		filename.gsub(/[^\w\s_-]+/, '')
				.gsub(/(^|\b\s)\s+($|\s?\b)/, '\\1\\2')
				.gsub(/\s/, '_')
	end

	def ext(language)
		if language == 'Swift'
			return 'swift'
		else
			return 'm'
		end
	end
end