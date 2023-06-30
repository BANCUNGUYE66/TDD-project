class Solver
  def factorial num
    if (num == 0)
      return 1
    elsif (num<0)
      raise ArgumentError.new("Expected positive number, got #{num}")
    end
    num *= factorial(num-1)
  end

  def reverse word
    word.reverse
  end

  def fizzbuzz num
    if num%3 == 0 and num%5 ==0
      "fizzbuzz"
    elsif num%3 == 0
      "fizz"
    elsif num%5 ==0
      "buzz"
    else
      num.to_s
    end
  end
end