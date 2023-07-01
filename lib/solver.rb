class Solver
  def factorial(num)
    if num.zero?
      return 1
    elsif num.negative?
      raise ArgumentError, "Expected positive number, got #{num}"
    end

    num * factorial(num - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? and (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
