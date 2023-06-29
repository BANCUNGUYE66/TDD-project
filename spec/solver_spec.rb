require_relative '../lib/solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a positive number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an ArgumentError for a negative number' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of a non-empty string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it 'returns an empty string when given an empty string' do
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when divisible by 3' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string when not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
