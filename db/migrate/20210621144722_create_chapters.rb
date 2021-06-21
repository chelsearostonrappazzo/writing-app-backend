class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.integer :story_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
