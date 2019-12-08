class API
   
  def gather
    url = "https://swapi.co/api/films/?format=json"
    response = HTTParty.get(url)
    response["results"].each do |movie|
      title = movie["title"]
      episode_id = movie["episode_id"]
      opening_crawl = movie["opening_crawl"]
      director = movie["director"]
      producer = movie["producer"]
      release_date = movie["release_date"]
      Movie.new(title, episode_id, opening_crawl, director, producer, release_date)
    end
  end
  
end