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
    sentences_count = 0
    self.split(" ").each do |sentence| 
      if (sentence.sentence? || sentence.question? || sentence.exclamation?) then
        sentences_count += 1
      end
    end
    sentences_count
  end
end