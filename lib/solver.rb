class Solver
  def factorial num
    if (num == 0)
      return 1
    elsif (num<0)
      raise ArgumentError.new("Expected positive number, got #{num}")
    end
    num *= factorial(num-1)
  end

  def reverse string
    string.reverse
  end
end