#!/usr/bin/ruby
Dir[File.dirname(__FILE__) + './lib/*.rb'].each {|file| require file }

num = ARGV.join(" ")
puts "Test: ", "  input = '#{num}'"
puts '--------------------RESULT---------------------------'
puts "  output = " + processTheDress(num)
puts '-----------------------------------------------------'

