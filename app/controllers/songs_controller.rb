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
      if @song.save
         format.html { redirect_to @artist }
         format.json { render json: @song}
       else
        format.html { redirect_to @artist}
        format.json { render json: @song.errors, status: :unprocessable_entity }
       end
    end
  end

  def destroy
    song = Song.find(params[:id])
    @artist = song.artist
    song.destroy

    respond_to do |format|
      format.html { redirect_to @artist }
      format.json { head :no_content }
    end
   end



  private

    def song_params
      params.require(:song).permit(:name, :link, :artist_id)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

end
