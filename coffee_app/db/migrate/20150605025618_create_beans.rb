class CreateBeans < ActiveRecord::Migration
  def change
      create_table :beans do |t|
      t.integer :company_id
      t.string :name
      t.string :origin
      t.string :estate
      t.string :variety
      t.string :processing
      t.string :season
      t.string :elevation

      t.timestamps null: false
    end
  end
end
