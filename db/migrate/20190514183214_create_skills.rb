class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :key
      t.string :type
      t.string :description
      t.integer :hero_id
      t.timestamps
    end
  end
end
