class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render(:index)
  end

  def show
    @artist= Artist.find_by(id: params[:id])
    @songs= Song.where(artist_id: params[:id])
    render(:show)
  end 

  def new
    render(:new)
  end 

  def edit
    @artist= Artist.find_by(id: params[:id])
    render(:edit)
  end

  def create
    Artist.create({
      name: params[:name],
      genre: params[:genre],
      photo_url: params[:photo_url]
    })
    redirect_to("/artists")
  end 

  def update
    @artist= Artist.find_by(id: params[:id])
    @artist.update({
      name: params[:name],
      genre: params[:genre],
      photo_url: params[:photo_url]
    })
    redirect_to("/artists")
  end 

  def destroy
    @artist= Artist.find_by(id: params[:id])
    @artist.destroy
    redirect_to(:back)
  end


end 