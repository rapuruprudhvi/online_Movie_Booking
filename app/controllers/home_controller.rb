class HomeController < ApplicationController
    def index
        @upcoming_movies = Movie.where("release_date > ?", Date.today)
      end
end
