require 'spec_helper'
require 'rails_helper'

describe Movie do

 before :each do
   Movie.create(title: 'Toy Story', rating: 'PG', description: 'Animated film', release_date: Time.now, director: 'Disney')
   Movie.create(title: 'Terminator', rating: 'PG', description: 'Sci-Fi film', release_date: Time.now, director: 'Ridley Scott')
   Movie.create(title: 'Gladiator', rating: 'PG-18', description: 'Action film', release_date: Time.now, director: 'Ridley Scott')
 end
 context 'Searching for a movie' do
   it 'should find a movie based on an existing movies director' do
     expect(Movie.search_movie_by_director('Ridley Scott').count).to eq(2)
   end 

   it 'should not find movies by different directors' do
     Movie.search_movie_by_director('Disney').each do | movie|
       expect(movie.director).not_to eq('Ridley Scott')
     end
   end
 end
end
