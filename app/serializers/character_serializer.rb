class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :description
end
