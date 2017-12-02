class MixesController < ApplicationController
  before_action :set_mix, only: [:show]

  def index
    @mixes = Mixes.all
  end

  def show
  end

  def create
    @mix = Mix.new(mix_params)
    @mix.save
  end

  private

  def set_mix
    @mix = @mix.find(params[:id])
  end

  def mix_params
    params.require(:mix).permit(:name, :description)
  end
end
