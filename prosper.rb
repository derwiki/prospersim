total = 10_000
return_rate = 1.102
monthly = total * return_rate / 36.0
puts "Monthly capital available: #{monthly}"

long_gain = 0
36.times do
  long_gain += monthly * return_rate
end
puts "Reinvesting naively will return longterm: #{long_gain}"
