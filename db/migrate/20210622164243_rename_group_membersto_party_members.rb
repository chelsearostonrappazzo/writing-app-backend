class RenameGroupMemberstoPartyMembers < ActiveRecord::Migration[6.0]
  def change
    rename_table :group_members, :party_members
  end
end
