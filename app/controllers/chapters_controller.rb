class ChaptersController < ApplicationController
  def index 
    render json: Chapter.where(story_id: params[:id])
  end

  def show 
    render json: Chapter.find(params[:id])
  end
end
