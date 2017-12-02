class SongsController < ApplicationController
  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to songs_path
  end

  private

  # def set_song
  #   @song = Song.find(params[:id])
  # end

  def song_params
    params.require(:song).permit(:artist, :name, :source)
  end

end
