puts "Enter words"
text = gets.chomp
text.downcase!

words = text.split(" ")
frequencies = Hash.new(0)
words.each do |element|
  frequencies[element] += 1
end

frequencies = frequencies.sort_by do |key, count|
  count
end

frequencies.reverse!

frequencies.each do |key, value|
  puts key + " " + value.to_s
end
