require './lib/snippet'
require './lib/readme-generator'
require './lib/readable-snippets-generator'
require 'fileutils'

LIBRARY_SNIPPETS_DIR = "#{Dir.home}/Library/Developer/Xcode/UserData/CodeSnippets"
SANDBOXED_SNIPPETS_DIR = "TODO: support for the App-Store downloaded Xcode snippets"

def initialize_snippets
  Dir.chdir("backup")
  snippets = Dir['*.codesnippet'].map do |snippet_file|
    snippet = Snippet.parse(File.read(snippet_file))
  end
  Dir.chdir("../")
  return snippets
end

def raw_snippets
  @raw_snippets ||= initialize_snippets
end

def generate_readme
  ReadmeGenerator.generate raw_snippets
end

def backup_files
  FileUtils.rm_rf 'backup'  
  FileUtils.cp_r LIBRARY_SNIPPETS_DIR, 'backup'
end


def generate_readable_snippets
  FileUtils.rm_rf 'readable_snippets'
  FileUtils.mkdir 'readable_snippets'

  ReadableSnippetsGenerator.generate raw_snippets
end

task :backup do
  backup_files
  generate_readable_snippets
  generate_readme
end


