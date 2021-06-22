class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :stories, :parties
  def stories 
    self.object.stories.map do |story|
      {id: story.id,
      title: story.title,
      description: story.description,
      chapters: story.chapters,
      characters: story.characters}
    end
  end

  def parties 
    self.object.parties.map do |party|
      {id: party.id,
      name: party.name}
    end
  end
end
