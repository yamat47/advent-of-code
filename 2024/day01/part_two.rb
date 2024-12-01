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

right_array_frequency_map = right_array.tally
left_array_frequency_map = left_array.tally

left_array_frequency_map.each do |left, left_frequency|
  result += (left * left_frequency * (right_array_frequency_map[left] || 0))
end

puts result
