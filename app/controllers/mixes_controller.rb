class MixesController < ApplicationController
  before_action :set_mix, only: [:show]

  def index
    @mixes = Mix.all
    @mix = Mix.new
  end

  def show
    @song = Song.new
    @songs = @mix.songs
  end

  def create
    @mix = Mix.new(mix_params)
    @mix.save

    redirect_to mixes_path
  end

  private

  def set_mix
    @mix = Mix.find(params[:id])
  end

  def mix_params
    params.require(:mix).permit(:name, :description)
  end
end
