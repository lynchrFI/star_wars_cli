class MovieLibrary
  
  def run_program
   API.new.gather
   force_awaken
   call
  end 
  
  def force_awaken
    puts "Can you feel the power of the Dark Side?"
    puts "Welcome to the Star Wars movie library!"
  end
  
  def call
    user_response = nil 
      
        
     puts "To get information on all Star Wars movies, type 'list movies'."
    # puts "To see the opening crawl type, 'opening'."
    # puts "To check the episode type, 'episode'."
    # puts "To see who directed the movie, type 'director'."
    # puts "To see who produced the movie, type 'producer'."
    # puts "To see when the movie was released type 'release date'."
     puts "To leave the library, type 'exit'."
     puts "What would you like to do?"
    
   
    while user_response != "exit"
     
      user_response = gets.strip.downcase 
      
      if user_response.to_i > 0 && user_response.to_i < Movie.all.size 
        movie_info(user_response.to_i.to_s)
      elsif user_response == "list movies"
        movie_list
      elsif user_response == "exit"
        force_message
      else 
        puts "That is not an option. Please choose one of the available options.".red.bold
        puts "To see all the movies, type 'list movies'. You can also leave by typing, 'exit'."
      end
    end
  end
  
  def movie_info(user_response)
      movie = Movie.all[user_response.to_i - 1]
      puts "\n___________________________________\n"
      puts "Title --  #{movie.title}"
      puts "Director -- #{movie.director}"
      puts "Producer -- #{movie.producer}"
      puts "Release -- #{movie.release_date}"
      puts "Opening --  #{movie.opening_crawl}".yellow.bold
      puts "___________________________________"
      puts "\nIf you would like to view another movie, enter it's number.\n"
      puts "You can also see the list of movies again, by typing, 'list movies'."
      puts "You can also leave the program by typing 'exit'."
      puts "What would you like to do?"
  end
    
  def movie_list
    Movie.all.each.with_index(1) do |movie, i|
      puts "______________________________________"
      puts "\n#{i} - Star Wars: #{movie.title}\n"
    end
  end 
  
 
  
  def force_message
    puts "May the force be with you. See you next time!"
  end 

end