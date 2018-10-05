require 'pry'

class Movie
    attr_accessor :title

    @@all = []

    def initialize(title)
      @title = title
      @@all << self
    end

    def self.all
      @@all
    end

    def queue_items
      QueueItem.all.select do |item|
      item.movie == self
    end
  end

    def viewers
      QueueItem.all.select do |item|
        item.viewer == self
    end
   end

#returns the average of all ratings for this instance of `Movie`
   def average_rating
     #all of my movies in the queue
     average_movies = self.queue_items.map do |movie|
       movie.rating
       # binding.pry
     end
     final_total = self.average_movies.inject(0.0) do |sum, movie_rating|
       sum + movie_rating
     end
     final_total / self.average_movies.size
   end

#returns the instance of `Movie` with the highest average rating
   def self.highest_rated
     #have all my movies
     self.average_rating.max_by do |rating|
       rating.length
     end
   end
# binding.pry
end
