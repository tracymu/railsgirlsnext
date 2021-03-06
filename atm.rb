def withdraw(amount)
  remainder = amount%5
  notes =[]
  if remainder != 0 || amount == 0
    return false
  else
    number = amount/5
    number.times {|i| notes << 5 }
  end
  return notes

end


puts "How much money do you want?"
amount = gets.to_i

# puts withdraw(amount)

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [1, false],
    [43, false],
    [20, [5, 5, 5, 5]],
    [35, [5, 5, 5, 5, 5, 5, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end
