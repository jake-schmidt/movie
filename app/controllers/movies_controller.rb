class MoviesController < ApplicationController

  def destroy
    m = Movie.find_by(id: params["id"])
    m.delete
    redirect_to "/movies"
  end

  def create
    m = Movie.create title: params["title"],
                     year: params["year"],
                     poster_url: params["poster_url"],
                     director_id: params["director_id"]

    redirect_to "/movies"
  end

  def update
    m = Movie.find_by(id: params["id"])

    m.update title: params["title"],
             year: params["year"],
             poster_url: params["poster_url"],
             director_id: params["director_id"]

    redirect_to "/movies/#{m.id}"
  end

end
