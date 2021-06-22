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
    if @story.save 
      render json: Story.find(@story.id)
    else
      render json: {errors: @story.errors.full_messages}
    end
  end
end
