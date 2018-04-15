books = %w{ Demon-Haunted-World A-Short-History-Of-Nearly-Everything Basic-Economics The-Rational-Optimist}
numbers =  [2, 3, 54, 2, 432, 2, 53]
split_array = books.join.split('').sort { |a, b| b <=> a }
sorted_array = split_array.join.gsub('-', '').downcase.split('').sort!

frequencies = Hash.new(0)
alpha_hash = sorted_array.each { |item| frequencies[item] += 1}
sorted_freq = frequencies.sort_by {|item, amount| item.length}
p sorted_freq.max
val_sorted_freq =  sorted_freq.sort_by { |a, b| b }.reverse
p val_sorted_freq[0][1]


# puts books
# puts numbers

# puts numbers.sort! { |a, b| b <=> a}
# puts books.sort!  { |a, b| a.length <=> b.length }
# numbers.reverse!
# books.reverse!

# puts books
# puts numbers

# puts 1 > 0