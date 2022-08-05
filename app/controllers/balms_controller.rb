class BalmsController < ApplicationController
  def trope
    render json: Balm::Plot.trope
  end

  def archetypes
    render json: Balm::Plot.archetype(params[:number].to_i)
  end

  def setting 
    render json: Balm::Plot.setting
  end

  def prompt
    render json: Balm::Plot.all(params[:number].to_i)
  end
end
