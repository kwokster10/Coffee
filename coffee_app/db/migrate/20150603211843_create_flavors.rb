class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :taste_note
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
