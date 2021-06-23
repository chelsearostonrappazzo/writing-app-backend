class ArchetypesController < ApplicationController
  def show 
    @archetype = Archetype.limit(params[:number]).order("RANDOM()") 
    render json: @archetype
  end
end
