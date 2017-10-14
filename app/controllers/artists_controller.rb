class ArtistsController < ApplicationController

  def index
    if params[:sort].present?
      @artists = Artist.all.sort_by_name
    else
      @artists = Artist.all
    end

  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.all
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path, notice: "Artist removed"

  end


end
