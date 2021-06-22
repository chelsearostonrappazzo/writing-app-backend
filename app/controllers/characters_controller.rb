class CharactersController < ApplicationController
  def index 
    render json: Character.where(story_id: params[:id])
  end

  def show 
    render json: Character.find(params[:id])
  end
end
