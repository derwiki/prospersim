[1000, 2000, 5000, 10000, 20000, 25000].each do |total|
  return_rate = 1.102
  # the `monthly' amount of capital re-paid can be seen as the long term value
  # of the investment / the repayment time period (in months)
  monthly = total * return_rate / 36.0
  puts "Monthly capital available: $#{monthly.round}"
  minor_bump_return_rate = 1.136

  long_gain = 0
  minor_bump = 0
  36.times do
    # every month, `monthly' matures and is available for re-investment
    # each re-investment will produce an additional `minor_bump' each month
    # each month, minor_bump will increase by the same amount
    # the cumulative minor_bump is extra capital available to be invested in
    # the `long_gain +=' statement
    long_gain += (monthly + minor_bump) * return_rate
    minor_bump += (monthly * minor_bump_return_rate) / 36.0
  end
  puts "$#{total} invested will yield $#{long_gain.round} long term"
end
