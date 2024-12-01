# frozen_string_literal: true

file_path = File.join(__dir__, 'input.txt')

result = 0
left_array = []
right_array = []

File.foreach(file_path) do |line|
  left, right = line.split(' ')
  left_array << left.to_i
  right_array << right.to_i
end

left_array.sort!
right_array.sort!

result = left_array.each_with_index.sum do |left, index|
  (right_array[index] - left).abs
end

puts result
