def sorted_list(disney_movies, reverse = false)
    if 
        reverse == false
        disney_movies.sort { |a, b| a <=> b }
    else 
        disney_movies.sort { |a, b| b <=> a }
    end
end

disney_movies = %w{ lion-king little-mermaid lady-and-the-tramp finding-nemo toy-story tangled }

puts "In non-reverse order: #{sorted_list(disney_movies, true)}"
puts "In reverse order: #{sorted_list(disney_movies, false)}"

