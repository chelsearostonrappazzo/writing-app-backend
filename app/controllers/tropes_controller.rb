class TropesController < ApplicationController
  def show 
    @trope = Trope.limit(1).order("RANDOM()") 
    render json: @trope
  end
end
