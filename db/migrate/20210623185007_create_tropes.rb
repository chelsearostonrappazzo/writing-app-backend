class CreateTropes < ActiveRecord::Migration[6.0]
  def change
    create_table :tropes do |t|
      t.string :name

      t.timestamps
    end
  end
end
