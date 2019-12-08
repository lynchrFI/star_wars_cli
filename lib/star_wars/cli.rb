class MovieLibrary
  
  def run_program
   API.new.gather
   force_awaken
   call
  end 
  
  def force_awaken
    puts "Can you feel the power of the Dark Side?".blue.bold
    puts "Welcome to the Star Wars movie library!".blue.bold
  end
  
  def call
    user_response = nil 
    
    puts "To get information on all Star Wars movies, type 'list movies'.".green.bold
    puts "To leave the library, type 'exit'.".green.bold
    puts "What would you like to do?".green.bold
    
    while user_response != "exit"
     
      user_response = gets.strip.downcase 
      
      if user_response == user_response.to_i.to_s  
        movie_info(user_response)
      elsif user_response == "list movies"
        movie_list
      elsif user_response == "exit"
        force_message
      else 
        puts "That is not an option. Please choose one of the available options.".red.bold
        puts "To see all the movies, type 'list movies'. You can also leave by typing, 'exit'.".green.bold
      end
    end
  end
  
  def movie_info(user_response)
    user_response = user_response.strip.to_i - 1
    unless (0..Movie.all.size - 1).cover?(user_response)
      puts "That is not an option. Please choose one of the available options.".red.bold
      puts "To see all the movies, type 'list movies'. You can also leave by typing, 'exit'.".green.bold
      return
    end
    movie = Movie.all[user_response]
    puts "\n___________________________________\n"
    puts "Title --  #{movie.title}"
    puts "Director -- #{movie.director}"
    puts "Producer -- #{movie.producer}"
    puts "Release -- #{movie.release_date}"
    puts "Opening --  #{movie.opening_crawl}".yellow.bold
    puts "___________________________________"
    puts "\nIf you would like to view another movie, enter it's number.\n".green.bold
    puts "You can also see the list of movies again, by typing, 'list movies'.".green.bold
    puts "You can also leave the program by typing 'exit'.".green.bold
    puts "What would you like to do?".green.bold
  end
    
  def movie_list
    Movie.all.each.with_index(1) do |movie, i|
      puts "______________________________________"
      puts "\n#{i} - Star Wars: #{movie.title}\n"
    end
  end 

  def force_message
    puts "May the force be with you. See you next time!".cyan.bold
  end 

end