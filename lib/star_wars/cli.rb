class MovieLibrary
  
  def call
    user_response = ""
      
        
     puts "To get information on all Star Wars movies, type 'list movies'."
     puts "To leave the library, type 'exit'."
     puts "What would you like to do?"
   
    while user_response != "exit"
     
      user_response = gets.strip.downcase 
      
      if user_response == user_response.to_i
        movie_info(user_response)
      elsif user_response == "list movies"
        movies_list
      elsif user_response == "exit"
        force_message
      else 
        puts "That is not an option. Please choose one of the available options."
        puts "To see all the movies, type 'list movies'. You can also leave by typing, 'exit'."
      end
    end
  end
  
  def movie_info(user_response)
  end
    
  def movie_list
  end 
  
  def force_message
  end 

end