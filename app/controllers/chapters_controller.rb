class ChaptersController < ApplicationController
  def index 
    render json: Chapter.where(story_id: params[:id])
  end

  def show 
    render json: Chapter.find(params[:id])
  end

  def create 
    story_id = params[:id]
    @chapter = Chapter.new(
      title: params[:title],
      body: params[:body],
      story_id: story_id
    )
    if @chapter.save
      render json: Story.find(story_id)
    else
      render json: {errors: @chapter.errors.full_messages}, status: 406
    end
  end

  def update 
    @chapter = Chapter.find(params[:id])
    @chapter.title = params[:title] || @chapter.title
    @chapter.body = params[:body] || @chapter.body
    if @chapter.save
      render json: Chapter.find(params[:id])
    else
      render json: {errors: @chapter.errors.full_messages}, status: 406
    end
  end
end
