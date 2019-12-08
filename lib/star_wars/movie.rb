class Movie
  
  attr_reader :title, :episode_id, :opening_crawl, :director, :producer, :release_date
  @@all = []
  
  def initialize(title, episode_id, opening_crawl, director, producer, release_date)
    @title = title
    @episode_id = episode_id
    @opening_crawl = opening_crawl
    @director = director
    @producer = producer
    @release_date = release_date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end