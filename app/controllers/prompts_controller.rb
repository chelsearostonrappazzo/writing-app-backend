class PromptsController < ApplicationController
  def trope 
    @trope = Prompt.new(trope: Balm::Plot.trope)
    render json: @trope, each_serializer: PromptSerializer
  end

  # Balm::Plot.archetype/settings/all
end
