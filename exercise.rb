class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(" ")
    new_words = []

    words.each do |word|
      last_char = ""
      if word[-1] =~ /[[:punct:]]/
        last_char = word[-1]
        word = word[0..-2]
      end

      if word.length > 4
        if word[0] =~ /[A-Z]/
          word = "Marklar"
        else
          word = "marklar"
        end
      end

      new_words << word + last_char
    end
    new_words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [1, 1]
    while fib.length < nth
      fib << fib[-1] + fib[-2]
    end
    sum = 0
    fib.each do |num|
      sum += num if num.even?
    end

    return sum
  end

end
