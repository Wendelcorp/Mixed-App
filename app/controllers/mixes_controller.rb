class MixesController < ApplicationController
  before_action :set_mix, only: [:show, :destroy]

  def index
    @mixes = current_user.mixes
    @mix = current_user.mixes.build
  end

  def show
    @song = @mix.songs.build
    @songs = @mix.songs
  end

  def create
    @mix = current_user.mixes.build(mix_params)
    @mix.save

    redirect_to @mix
  end

  def destroy
    @mix.destroy

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
