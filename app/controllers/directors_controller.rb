class DirectorsController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    d = Director.find_by(id: params["id"])
    d.delete
    redirect_to "/directors"
  end

  def new

  end

  def create
    d = Director.create name: params["name"]

    redirect_to "/directors"
  end

  def edit

  end

  def update
    d = Director.find_by(id: params["id"])

    d.update name: params["name"]

    redirect_to "/directors/#{d.id}"
  end

end
