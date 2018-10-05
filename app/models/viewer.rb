require 'pry'

class Viewer
  attr_accessor :username

  @@all = []

    def initialize(username)
      @username = username
      self.class.all << self
    end

    def self.all
      @@all
    end

    def queue_items
      QueueItem.all.select do |item|
        item.viewer == self
      end
    end

    def queue_movies
      QueueItem.all.select do |item|
        item.movie == self
        # binding.pry
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

#did not have time to finish this method
  def rate_movie(movie, rating)
    QueueItem.new(self, movie, rating)
  end

end
