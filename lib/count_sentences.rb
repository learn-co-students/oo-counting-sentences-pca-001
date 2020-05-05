require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
      end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
      end 
  end

  def count_sentences
    fresh_array = self.split(/[.?!]/)
    fresh_array.delete_if{|sentence| sentence.empty?}
    fresh_array.length
  end
end