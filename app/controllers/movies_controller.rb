class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
  end
end
