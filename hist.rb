puts "Write a string"

text = gets.chomp

text.downcase!

words = text.split(" ")

frequencies = Hash.new(0)

words.each { |item| frequencies[item] += 1}

sorted_freq = frequencies.sort_by {|item, amount| item.length}

sorted_freq.reverse!

sorted_freq.reverse!.each do |item, amount|
    item + " " + amount.to_s
end

