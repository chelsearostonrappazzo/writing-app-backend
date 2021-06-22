class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :members 
  def members 
    self.object.users.map do |user|
      {name: user.name}
    end
  end
end
