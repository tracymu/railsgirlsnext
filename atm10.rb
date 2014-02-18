def withdraw(amount)
  remainder = amount%10
  notes =[]
  if remainder != 0 || amount == 0
    return false
  else
    number = amount/10
    number.times {|i| notes << 10 }
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
    [7, false],
    [45, false],
    [20, [10, 10]],
    [40, [10, 10, 10, 10]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end