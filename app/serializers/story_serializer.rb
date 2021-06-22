class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :chapters, :characters, :author
  def chapters 
    self.object.chapters.map do |chapter|
      {title: chapter.title,
        body: chapter.body,
        id: chapter.id,
        story_id: chapter.story_id
      }
    end
  end

  def characters 
    self.object.characters.map do |character|
      {name: character.name,
        description: character.description,
        id: character.id,
        story_id: character.story_id,
        age: character.age
      }
    end
  end

  def author 
    {author_id: self.object.user.id,
    author_name: self.object.user.name}

  end
end
