novels = {
    :GreenEggs => 5,
    :HarryPotter => 8,
    :WayOfKings => 4
}

puts "Here is your current list of novels: #{novels}"

puts "Would you like to add another book to your hash? (Type yes or no)"

answer = gets.chomp
answer.downcase!

case answer
    when "yes"
        puts "What book would you like to add?"
        book = gets.chomp
        novels[book.to_sym]
        puts "What rating would you like to give this book?[1 - 10]"
        rating = gets.chomp
        novels[book.to_sym] = rating.to_i
        puts "#{book} has been added to your library with a rating of #{rating}"
    when "no"
        puts "Sounds good to me!"
end

puts "Here is what is in your hash right now: #{novels}"
    