class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :color
      t.integer :cafe_id

      t.timestamps null: false
    end
  end
end
