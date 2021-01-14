require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.tr("!", ".").tr("?", ".").split(". ").length
    #.tr is something I discovered while trying to figure this out. it returns a copy of string with characters  in from_str replaced by corresponding characters in to_str. If to_str is shorter, it is padded with its last character in order to maintain corrospondence https://ruby-doc.org/core-2.4.1/String.html#method-i-tr
    #.split divides the collection into substrings based on delimiter ("." in this case)
  end

end