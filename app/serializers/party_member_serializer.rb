class PartyMemberSerializer < ActiveModel::Serializer
  attributes :id, :parties, :members
  def parties 
    self.object.parties.map do |party|
      {id: party.id,
      name: party.name}
    end
  end

  def members 
    self.object.users.map do |user|
      {member_name: user.name}
    end
  end
end
