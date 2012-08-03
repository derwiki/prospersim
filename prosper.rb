total = 10_000
return_rate = 1.102
monthly = total * return_rate / 36.0
puts "Monthly capital available: #{monthly}"

long_gain = 0
minor_bump = 0
36.times do
  long_gain += (monthly + minor_bump) * return_rate

  minor_bump += (monthly * return_rate) / 36.0
  puts "Minor bump is: #{minor_bump}"
end
puts "Reinvesting dividends will return longterm: #{long_gain}"
