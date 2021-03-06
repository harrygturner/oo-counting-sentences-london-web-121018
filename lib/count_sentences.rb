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
    count = 0

    breakdown = self.split
    breakdown.each do |part|
      if part.sentence? || part.question? || part.exclamation?
        count += 1
      end
    end
    count
  end
end
