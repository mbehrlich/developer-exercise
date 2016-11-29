class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str_arr = str.split(' ')
    new_str_arr = []
    str_arr.each do |word|
      if word.length > 4
        if word[0].upcase == word[0]
          new_word = "Marklar"
        else
          new_word = "marklar"
        end
        if word[-1].ord < 65
          new_word += word[-1]
        end
        new_str_arr << new_word
      else
        new_str_arr << word
      end
    end
    new_str_arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    if nth < 2
      return 0
    end
    sum = 0
    fibs = [1, 1]
    until fibs.length == nth
      new_num = fibs[-1] + fibs[-2]
      sum += new_num if new_num % 2 == 0
      fibs << new_num
    end
    sum
  end

end
