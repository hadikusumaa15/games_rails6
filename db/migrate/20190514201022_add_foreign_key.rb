class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :heros, :roles, column: :role_id, primary_key: :id, on_delete: :cascade, on_update: :cascade
    add_foreign_key :skills, :heros, column: :hero_id, primary_key: :id, on_delete: :cascade, on_update: :cascade
    add_foreign_key :fights, :heros, column: :hero_counter_id, primary_key: :id, on_delete: :cascade, on_update: :cascade
    add_foreign_key :fights, :heros, column: :hero_victim_id, primary_key: :id, on_delete: :cascade, on_update: :cascade
  end
end
