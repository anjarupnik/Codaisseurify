class ArtistsController < ApplicationController

  def index
    if params[:sort].present?
      return @artists = Artist.all.sort_name_asc if params[:sort] == "name_asc"
      return @artists = Artist.all.sort_name_desc if params[:sort] == "name_desc"
      return @artists = Artist.all.sort_date_asc if params[:sort] == "date_asc"
      return @artists = Artist.all.sort_date_desc if params[:sort] == "date_desc"
    end

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
