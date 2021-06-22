class StoriesController < ApplicationController
  def index 
    render json: Story.all
  end

  def show 
    render json: Story.find(params[:id])
  end

  def create 
    @story = Story.new(
      title: params[:title],
      description: params[:description],
      user_id: current_user.id
    )
  end
end
