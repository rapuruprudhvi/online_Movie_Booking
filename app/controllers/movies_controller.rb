class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    @upcoming = Movie.where("created_at > ? AND created_at <= ?", Date.today, Date.today + 14.days)
  end
  def upcoming
    @upcoming_movies = Movie.where("created_at > ?", Date.today)
  end

  def show
  end
end
