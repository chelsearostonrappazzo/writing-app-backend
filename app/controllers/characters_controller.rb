class CharactersController < ApplicationController
  def index 
    render json: Character.where(story_id: params[:id])
  end

  def show 
    render json: Character.find(params[:id])
  end

  def create 
    story_id = params[:id]
    @character = Character.new(
      name: params[:name],
      age: params[:age],
      description: params[:description],
      story_id: story_id
    )
    if @character.save
      render json: Story.find(story_id)
    else
      render json: {errors: @character.errors.full_messages}, status: 406
    end
  end
end
