class ChangeGroupIdToPartyId < ActiveRecord::Migration[6.0]
  def change
    rename_column :party_members, :group_id, :party_id
  end
end
