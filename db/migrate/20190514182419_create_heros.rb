class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :role
      t.string :tips
      t.string :specialty      
      t.integer :role_id
      t.timestamps
    end
  end
end
