class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :story_id
end
