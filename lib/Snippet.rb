require 'nokogiri-plist'

class Snippet
  
  def self.parse(snippet_filedata)
    self.new Nokogiri::PList(snippet_filedata)
  end
  
  def initialize(properties = {})
    @properties = properties
  end
  
  def value_for_key(key)
    @properties[key]
  end
  
  def shortcut
    value_for_key "IDECodeSnippetCompletionPrefix"
  end
  
  def code
    value_for_key "IDECodeSnippetContents"
  end
  
  def title
    value_for_key "IDECodeSnippetTitle"
  end
  
  def summary
    value_for_key "IDECodeSnippetSummary"
  end
  
end