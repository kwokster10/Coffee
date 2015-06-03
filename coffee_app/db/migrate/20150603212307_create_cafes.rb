class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.integer :roaster_id
      t.string :company
      t.string :name
      t.string :origin
      t.string :estate
      t.string :variety
      t.string :season
      t.integer :elevation
      t.integer :likes

      t.timestamps null: false
    end
  end
end
