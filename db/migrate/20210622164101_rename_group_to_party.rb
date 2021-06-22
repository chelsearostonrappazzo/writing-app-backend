class RenameGroupToParty < ActiveRecord::Migration[6.0]
  def change
    rename_table :groups, :parties
  end
end
