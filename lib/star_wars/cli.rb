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
     puts "To check the episode type, 'episode'."
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
      # elsif user_response == "opening"
      #   opening_crawl
      # elsif user_response == "episode"
      #   episode_id
      # elsif user_response == "director"
      #   director
      # elsif user_response == "producer"
      #   producer
      # elsif user_response == "release date"
      #   release_date 
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
    puts "Title --  #{movie.title}"
    puts "Opening --  #{movie.opening_crawl}"
    puts "Director -- #{movie.director}"
    puts "Producer -- #{movie.producer}"
    puts "Release -- #{movie.release_date}"
  end
    
  #   def movie_list
  #   Movie.all.each.with_index do |movie, i|
  #     puts "______________________________________"
  #     puts "#{i + 1} - Star Wars: #{movie.title}"
      
  #   end
  # end 
  
  # def opening_crawl
  #   Movie.all.each.with_index do |movie, i|
  #     puts "______________________________________"
  #     puts "#{i + 1} - Star Wars: #{movie.opening_crawl}"
  #   end
  # end 
  
  #   def director
  #   Movie.all.each.with_index do |movie, i|
  #     puts "#{i + 1} - Star Wars: #{movie.director}"
  #   end
  # end 
  
  # def episode_id
  #     Movie.all.each.with_index do |movie, i|
  #     puts "#{i + 1} - Star Wars: #{movie.title} (#{movie.episode_id})"
  #   end
  # end 
  
  # def producer
  #     Movie.all.each.with_index do |movie, i|
  #     puts "#{i + 1} - Star Wars: #{movie.producer}"
  #   end
  # end 
  
  # def release_date
  #     Movie.all.each.with_index do |movie, i|
  #     puts "#{i + 1} - Star Wars: #{movie.release_date}"
  #   end
  # end
  
  def force_message
    puts "May the force be with you. See you next time!"
  end 

end