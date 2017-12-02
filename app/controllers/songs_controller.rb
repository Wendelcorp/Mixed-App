class SongsController < ApplicationController
  before_action :set_song, only: [:destroy]

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to mix_path(@song.mix_id)
  end

  def destroy
    @song.destroy
    redirect_to mix_path(@song.mix_id)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:artist, :name, :source, :mix_id)
  end

end
