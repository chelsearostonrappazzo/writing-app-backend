class CreateArchetypes < ActiveRecord::Migration[6.0]
  def change
    create_table :archetypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
