class Prompt 
  include ActiveModel::SerializerSupport
  attr_accessor :trope, :setting, :archetype
  def initialize(input_options)
    @trope = input_options[:trope]

  end
end