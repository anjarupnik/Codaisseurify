class SongsController < ApplicationController

  def new
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.build
  end

  private

    def song_params
      params.require(:song).permit(:name, :link)
    end

end
