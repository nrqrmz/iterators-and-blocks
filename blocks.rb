def timer
  initial_time = Time.now

  yield

  puts "Elapsed time is: #{Time.now - initial_time} seconds."
end

def recursion_sum(num)
  return 1 if num == 1 # guard clause

  num + recursion_sum(num - 1)
end

def gauss_sum(num)
  (num * (num + 1)) / 2
end

# timer do
#   puts "Calculating aritmetic progression sum using recursion"
#   puts "The result is: #{recursion_sum(9000)}"
# end

puts ''

timer do
  puts "Calculating aritmetic progression sum using gauss_sum"
  puts "The result is: #{gauss_sum(9000)}"
end
