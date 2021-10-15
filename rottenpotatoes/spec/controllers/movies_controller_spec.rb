require 'rails_helper'

describe MoviesController do
  describe 'Search movies by the same director' do
    it 'should receive the click made when find movies with same director' do
      expect(Movie).to receive(:similar_movies).with(1)
      get :search, {movie_id: 1}
    end
  end
end