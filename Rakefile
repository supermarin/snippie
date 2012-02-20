require './lib/snippet'
require './lib/readme-generator'
require './lib/readable-snippets-generator'
require 'fileutils'

LIBRARY_SNIPPETS_DIR = "#{Dir.home}/Library/Developer/Xcode/UserData/CodeSnippets"
SANDBOXED_SNIPPETS_DIR = "TODO: support for the App-Store downloaded Xcode snippets"

BACKUP_DIR = 'backup'

def initialize_snippets
  Dir.chdir BACKUP_DIR
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
  FileUtils.rm_rf BACKUP_DIR
  FileUtils.cp_r LIBRARY_SNIPPETS_DIR, BACKUP_DIR
  # puts "#{Dir.entries(LIBRARY_SNIPPETS_DIR).count} snippets backed up."
end


def generate_readable_snippets
  FileUtils.rm_rf 'readable_snippets'
  FileUtils.mkdir 'readable_snippets'

  ReadableSnippetsGenerator.generate raw_snippets
end

def copy_snippets_to_xcode
    FileUtils.cp_r "#{BACKUP_DIR}/.", LIBRARY_SNIPPETS_DIR
end

task :backup do
  backup_files
  generate_readable_snippets
  generate_readme

  puts 'You have successfully backed up your snippets! Raw snippets are in '
end

task :clean_import do
  FileUtils.rm_rf "#{LIBRARY_SNIPPETS_DIR}/."
  copy_snippets_to_xcode
end

task :import do
  copy_snippets_to_xcode
  puts 'You have successfully imported your snippets in the Xcode. 
Please re-start Xcode to see the them :)'
end