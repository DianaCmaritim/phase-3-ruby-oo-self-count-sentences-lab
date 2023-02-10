require 'pry'

class String
  attr_reader :count_sentences

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
    sentences = self.split(/[.?!] /)
    sentences.count
    #binding.pry
  end
end

"Hi, my name is Sophie.What's your name?Happy Halloween!"