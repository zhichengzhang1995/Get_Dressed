#!/usr/bin/ruby
Dir[File.dirname(__FILE__) + './lib/*.rb'].each {|file| require file }

puts "Test: ", "  input = '5 1', output = 'socks, fail'"
num = '5 1'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '4 1', output = 'fail'"
num = '4 1'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '3 4 2 5 6', output = 'shirt, fail'"
num = '3 4 2 5 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'shirt, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '5 3 4 2 6', output = 'socks, shirt, fail'"
num = '5 3 4 2 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, shirt, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '5 2 1 4 3 6', output = 'socks, pants, fail'"
num = '5 2 1 4 3 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, pants, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '3 2 5 1', output = 'shirt, pants, socks, hat, fail'"
num = '3 2 5 1'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'shirt, pants, socks, hat, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '5 3 2 6 4', output = 'socks, shirt, pants, fail'"
num = '5 3 2 6 4'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, shirt, pants, fail'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '5 3 2 4 6', output = 'socks, shirt, pants, shoes, leave'"
num = '5 3 2 4 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, shirt, pants, shoes, leave'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '3 5 1 2 4 6', output = 'shirt, socks, hat, pants, shoes, leave'"
num = '3 5 1 2 4 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'shirt, socks, hat, pants, shoes, leave'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '3 2 5 4 1 6', output = 'shirt, pants, socks, shoes, hat, leave'"
num = '3 2 5 4 1 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'shirt, pants, socks, shoes, hat, leave'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '3 5 2 4 1 6', output = 'shirt, socks, pants, shoes, hat, leave'"
num = '3 5 2 4 1 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'shirt, socks, pants, shoes, hat, leave'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'

puts ''

puts "Test: ", "  input = '5 2 3 4 1 6', output = 'socks, pants, shirt, shoes, hat, leave'"
num = '5 2 3 4 1 6'
puts '--------------------RESULT---------------------------'
if processTheDress(num) == 'socks, pants, shirt, shoes, hat, leave'
  puts "  output = " + processTheDress(num)
  puts "  \033[32mTest Passed √\033[0m"
else
  puts "  \033[31m! Test Fail ×\033[0m"
  puts "  The output is: " + processTheDress(num)
end
puts '-----------------------------------------------------'
