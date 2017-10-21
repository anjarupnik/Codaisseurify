class SongsController < ApplicationController

before_action :set_artist

def index
end

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.create(song_params)

    respond_to do |format|
         format.html { redirect_to @artist }
         format.js
         format.json {render json: @song}
      end
     end

  def destroy
    song = Song.find(params[:id])
    @artist = song.artist
    song.destroy

    redirect_to artist_path(@artist), notice: "Song deleted"

end



  private

    def song_params
      params.require(:song).permit(:name, :link, :artist_id)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

end
