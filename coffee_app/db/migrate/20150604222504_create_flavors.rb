class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :category
      t.string :note
      t.string :color
      t.integer :bean_id

      t.timestamps null: false
    end
  end
end
