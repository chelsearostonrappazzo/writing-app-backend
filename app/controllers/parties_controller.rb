class PartiesController < ApplicationController
  def index 
    render json: Party.all
  end

  def show 
    render json: Party.find(params[:id])
  end
end
