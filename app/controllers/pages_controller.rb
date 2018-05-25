class PagesController < ApplicationController


  def index

  end

  def about
  end

  def myalbum
    @albums = Album.where(user_id: current_user.id)
  end
end
