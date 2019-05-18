class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.integer :hero_counter_id, null: false, comment: 'counter hero'
      t.integer :hero_victim_id, null: false, comment: 'victim hero'
      t.timestamps
    end
  end
end
