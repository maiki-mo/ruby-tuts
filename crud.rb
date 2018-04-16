books = {
    :Wheeloftime => 5,
    :Mistborn => 1,
    :Alchemist => 2,
    :Whatever => 4
}

puts "What would you like to do? Options: (add) (update) (delete) (list)"

choice = gets.chomp
choice.downcase!

case choice
    when "add"
        puts "What book would you like to add to your library?"
        title = gets.chomp
    if books[title.to_sym].nil?
        title.capitalize!
        puts "What would you rate this book between 1 - 10?"
        rating = gets.chomp
        books[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
        puts books
    else
        puts "Title is already in the library; please choose another."
    end
    when "update"
        puts "What book's rating would you like to change?"
        title_update = gets.chomp
        title_update.capitalize!
    if books[title_update.to_sym].nil?
        puts "Error"
    else
        puts "What do you want to rate this book?"
        rating_update = gets.chomp
        books[title_update.to_sym] = rating_update.to_i
        puts "You have changed the rating for the book #{title_update} to #{rating_update}"
        puts books
    end
    when "delete"
        puts "What title would you like deleted?"
        title_delete = gets.chomp.to_sym.capitalize
    if books[title_delete.to_sym].nil?
        puts "That title does not exist anyway"
    else
        books.delete(title_delete)
        puts books
    end
    when "list"
        books.each do |book, rating|
            puts "#{book}: #{rating}"
        end
    else
        puts "Error!  You have broken something!?!"
end