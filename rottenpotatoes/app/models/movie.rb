class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.search_movie_by_director(director)
    return nil if director == ""
    movies = Movie.where(director: director)
  end
end
