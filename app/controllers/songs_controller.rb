class SongsController < ApplicationController

  def edit
    @artist= Artist.find_by(id: params[:artist_id])
    @song = Song.find_by(id: params[:id])
    render(:edit)
  end 

  def update
    @artist= Artist.find_by(id: params[:artist_id])
    @song= Song.find_by(id: params[:id])
    @song.update({
      title: params[:title],
      year: params[:year]
    })
    redirect_to("/artists/#{@artist.id}")
  end 

  def destroy
    @song= Song.find_by(id: params[:id])
    @song.destroy
    redirect_to(:back)
  end 


end 