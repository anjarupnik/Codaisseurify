class ArtistsController < ApplicationController

  def index
    return @artists = Artist.all.sort_name_asc if params[:sort].present? && params[:sort] == "name_asc"
    return @artists = Artist.all.sort_name_desc if params[:sort].present? && params[:sort] == "name_desc"

      @artists = Artist.all

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
