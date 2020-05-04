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
    array = []
    count = 0
    array = self.split
    array.each do |elem| 
      count += 1  if elem.sentence? || elem.question? || elem.exclamation?
    end
    count
  end
end
