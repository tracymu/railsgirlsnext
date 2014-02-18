def withdraw(amount)

  remainder = amount%5
  notes =[]
  if remainder != 0
    return false
  else
    number = amount/5
    number.times {|i| notes << 5 }
  end
  return notes

end


puts "How much money do you want?"

amount = gets

puts withdraw(amount)