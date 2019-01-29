require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end
  end

  def question?
    if self.include?("?") == true
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.include?("!") == true
      return true
    else
      return false
    end
  end

  def count_sentences
    if exclamation? && question?
      self.split(/\?|\.|!/).size-1
    elsif sentence?|| question? || exclamation?
      self.split.size
    elsif !sentence?
      0
    end
  end
end
