class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :stories, 
  def stories 
    self.object.stories.map do |story|
      {id: story.id,
      title: story.title,
      description: story.description,
      chapters: story.chapters,
      characters: story.characters}
    end
  end
end
