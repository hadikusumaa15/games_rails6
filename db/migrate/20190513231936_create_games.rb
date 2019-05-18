class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :studio
      t.string :website
      t.timestamps
    end
  end
end
