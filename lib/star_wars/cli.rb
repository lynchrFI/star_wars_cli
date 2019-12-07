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
    user_response = ""
      
        
     puts "To get information on all Star Wars movies, type 'list movies'."
     puts "To see the opening crawl type, 'opening'."
     puts "To check a certain episode type, 'episode'."
     puts "To see who directed the movie, type 'director'."
     puts "To see who produced the movie, type 'producer'."
     puts "To see when the movie was released type 'release date'."
     puts "To leave the library, type 'exit'."
     puts "What would you like to do?"
    
   
    while user_response != "exit"
     
      user_response = gets.strip.downcase 
      
      if user_response == user_response.to_i
        movie_info(user_response)
      elsif user_response == "list movies"
        movie_list
      elsif user_response == "exit"
        force_message
      elsif user_response == "opening"
        opening_crawl
      elsif user_response == "episode"
        episode_id
      elsif user_response == "director"
        director
      elsif user_response == "producer"
        producer
      elsif user_response == "release date"
        release_date 
      else 
        puts "That is not an option. Please choose one of the available options.".red.bold
        puts "To see all the movies, type 'list movies'. You can also leave by typing, 'exit'."
      end
    end
  end
  
  def movie_info(user_response)
  end
    
  def movie_list
    Movie.all.each.with_index do |movie, i|
      puts "#{i + 1} - Star Wars: #{movie.title}"
    end
  end 
  
  def opening_crawl
    Movie.all.each.with_index do |movie, i|
      puts "#{i + 1} - Star Wars: #{movie.opening_crawl}"
    end
  
  def force_message
    puts "May the force be with you. See you next time!"
  end 

end